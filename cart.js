(function () {
  const storageKey = 'vela-cart';
  const pageName = document.title.split('|')[1]?.trim().toLowerCase() || 'shop';

  function addLoadingIndicator() {
    const loader = document.createElement('div');
    loader.className = 'maximus-loader';
    loader.setAttribute('role', 'status');
    loader.setAttribute('aria-label', 'Loading Maximus');
    loader.innerHTML = '<div class="loader-mark"><img src="maximus_logo.jpeg" alt="Maximus Studio"><span></span></div>';
    document.body.appendChild(loader);

    const finishLoading = () => {
      loader.classList.add('is-ready');
      window.setTimeout(() => loader.remove(), 500);
    };

    if (document.readyState === 'complete') {
      window.setTimeout(finishLoading, 250);
    } else {
      window.addEventListener('load', finishLoading, { once: true });
      window.setTimeout(finishLoading, 3500);
    }
  }

  function readCart() {
    try {
      return JSON.parse(localStorage.getItem(storageKey)) || [];
    } catch (error) {
      return [];
    }
  }

  function saveCart(cart) {
    localStorage.setItem(storageKey, JSON.stringify(cart));
    updateCartCount(cart);
  }

  function updateCartCount(cart = readCart()) {
    const count = cart.reduce((total, item) => total + item.quantity, 0);
    document.querySelectorAll('.bag').forEach((button) => button.setAttribute('data-count', count));
    document.querySelectorAll('[data-cart-count]').forEach((element) => { element.textContent = count; });
  }

  function addToCart(product) {
    const cart = readCart();
    const existing = cart.find((item) => item.id === product.id);
    if (existing) {
      existing.quantity += 1;
    } else {
      cart.push({ ...product, quantity: 1 });
    }
    saveCart(cart);
    showNotice(`${product.name} added to your bag`);
  }

  function showNotice(message) {
    let notice = document.querySelector('.cart-notice');
    if (!notice) {
      notice = document.createElement('div');
      notice.className = 'cart-notice';
      document.body.appendChild(notice);
    }
    notice.textContent = message;
    notice.classList.add('is-visible');
    window.clearTimeout(notice.timer);
    notice.timer = window.setTimeout(() => notice.classList.remove('is-visible'), 2200);
  }

  function enhanceProductCards() {
    document.querySelectorAll('.product').forEach((card, index) => {
      const image = card.querySelector('img');
      const info = card.querySelector('.product-info');
      const title = info?.firstElementChild;
      const name = title?.childNodes[0]?.textContent.trim();
      const description = title?.querySelector('p')?.textContent.trim() || '';
      const priceText = info?.querySelector('.price')?.textContent.replace(/[^0-9.]/g, '') || '0';
      if (!image || !info || !name || card.querySelector('.add-cart')) return;
      const product = {
        id: `${pageName}-${name.toLowerCase().replace(/[^a-z0-9]+/g, '-')}-${index}`,
        name,
        description,
        price: Number(priceText),
        image: image.src
      };
      card.dataset.productId = product.id;
      const button = document.createElement('button');
      button.className = 'add-cart';
      button.type = 'button';
      button.textContent = 'Add to bag';
      button.dataset.product = JSON.stringify(product);
      info.appendChild(button);
    });
  }

  function addCartNavigation() {
    document.querySelectorAll('.logo').forEach((logo) => {
      logo.innerHTML = '<img src="maximus_logo.jpeg" alt="Maximus Studio logo">';
      logo.classList.add('image-logo');
    });
    document.querySelectorAll('.bag').forEach((button) => {
      button.setAttribute('aria-label', 'Open shopping bag');
      button.setAttribute('title', 'Open shopping bag');
      button.addEventListener('click', () => { window.location.href = 'cart.html'; });
    });
    document.querySelectorAll('.nav-links').forEach((links) => {
      if (links.querySelector('.cart-nav-link')) return;
      const existingLink = links.querySelector('a[href="cart.html"]');
      if (existingLink) {
        existingLink.className = 'cart-nav-link';
        existingLink.innerHTML = 'Bag (<span data-cart-count>0</span>)';
        return;
      }
      const link = document.createElement('a');
      link.className = 'cart-nav-link';
      link.href = 'cart.html';
      link.innerHTML = 'Bag (<span data-cart-count>0</span>)';
      links.appendChild(link);
    });
  }

  function renderCartPage() {
    const container = document.querySelector('[data-cart-page]');
    if (!container) return;
    const cart = readCart();
    if (!cart.length) {
      container.innerHTML = '<div class="cart-empty"><div class="eyebrow">Your bag is waiting</div><h2>Nothing here yet.</h2><p>Start with a few pieces you will reach for every day.</p><a class="cart-button" href="index.html#collection">Explore collections <span>↗</span></a></div>';
      return;
    }
    const subtotal = cart.reduce((total, item) => total + item.price * item.quantity, 0);
    container.innerHTML = `<div class="cart-items"><div class="cart-items-heading"><span>Item</span><span>Quantity</span><span>Total</span></div>${cart.map((item) => `<article class="cart-item"><img src="${item.image}" alt="${item.name}"><div class="cart-item-info"><h3>${item.name}</h3><p>${item.description}</p><button class="remove-item" type="button" data-remove="${item.id}">Remove</button></div><div class="quantity"><button type="button" class="cart-action" data-decrease="${item.id}" aria-label="Decrease ${item.name} quantity">−</button><span>${item.quantity}</span><button type="button" class="cart-action" data-increase="${item.id}" aria-label="Increase ${item.name} quantity">+</button></div><strong>$${(item.price * item.quantity).toFixed(2)}</strong></article>`).join('')}</div><aside class="cart-summary"><div><span>Subtotal</span><strong>$${subtotal.toFixed(2)}</strong></div><p>Shipping calculated at checkout.</p><button class="cart-button checkout-button" type="button" data-checkout>Checkout <span>↗</span></button></aside>`;
  }

  function bindCartActions() {
    document.addEventListener('click', (event) => {
      const addButton = event.target.closest('.add-cart');
      if (addButton) {
        event.preventDefault();
        event.stopPropagation();
        addToCart(JSON.parse(addButton.dataset.product));
        return;
      }
      const increase = event.target.closest('[data-increase]');
      const decrease = event.target.closest('[data-decrease]');
      const remove = event.target.closest('[data-remove]');
      if (increase || decrease || remove) {
        const actionId = (increase || decrease || remove).dataset.increase || (increase || decrease || remove).dataset.decrease || (increase || decrease || remove).dataset.remove;
        const cart = readCart();
        const item = cart.find((entry) => entry.id === actionId);
        if (remove) {
          saveCart(cart.filter((entry) => entry.id !== actionId));
        } else if (item) {
          item.quantity += increase ? 1 : -1;
          saveCart(item.quantity > 0 ? cart : cart.filter((entry) => entry.id !== actionId));
        }
        renderCartPage();
        return;
      }
      if (event.target.closest('[data-checkout]')) {
        saveCart([]);
        const container = document.querySelector('[data-cart-page]');
        if (container) {
          container.innerHTML = '<div class="cart-empty"><div class="eyebrow">Order confirmed</div><h2>Order placed.</h2><p>Thank you for shopping with Maximus. Your order is on its way to becoming something you will reach for every day.</p><a class="cart-button" href="index.html#collection">Continue shopping <span>↗</span></a></div>';
        }
        showNotice('Your order has been placed successfully');
      }
    });
  }

  const style = document.createElement('style');
  style.textContent = `.maximus-loader{position:fixed;inset:0;z-index:9999;display:grid;place-items:center;background:var(--paper,#f5f1e9);opacity:1;transition:opacity .45s ease;pointer-events:auto}.maximus-loader.is-ready{opacity:0;pointer-events:none}.loader-mark{position:relative;display:grid;justify-items:center;gap:24px}.loader-mark img{width:260px;height:60px;object-fit:contain}.loader-mark span{display:block;width:34px;height:34px;border:2px solid rgba(32,32,29,.2);border-top-color:var(--coral,#df674f);border-radius:50%;animation:maximus-spin .8s linear infinite}@keyframes maximus-spin{to{transform:rotate(360deg)}}.logo.image-logo{display:block;width:380px;height:86px}.logo.image-logo img{display:block;width:100%;height:100%;object-fit:contain;object-position:left center}.nav-links a{font-size:17px;font-weight:700}.bag::after{content:attr(data-count)}.cart-nav-link{color:var(--muted);font-size:17px;font-weight:700}.cart-nav-link:hover{color:var(--coral)}.add-cart{display:block;margin-top:12px;border:0;border-bottom:1px solid var(--ink);background:transparent;padding:0 0 5px;cursor:pointer;font:inherit;font-size:11px;color:var(--ink)}.add-cart:hover{color:var(--coral);border-color:var(--coral)}.cart-notice{position:fixed;right:22px;bottom:22px;z-index:10;background:var(--ink);color:var(--paper);padding:14px 18px;font-size:12px;transform:translateY(120%);transition:transform .25s ease}.cart-notice.is-visible{transform:translateY(0)}@media(max-width:700px){.loader-mark img{width:210px;height:49px}.logo.image-logo{width:280px;height:67px}.nav-links a,.cart-nav-link{font-size:13px}.cart-notice{right:15px;bottom:15px;left:15px;text-align:center}}`;
  document.head.appendChild(style);
  addLoadingIndicator();
  enhanceProductCards();
  addCartNavigation();
  bindCartActions();
  updateCartCount();
  renderCartPage();
})();
