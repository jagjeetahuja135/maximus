-- Maximus Studio Catalog Seed
-- Populates the database with 7 curated items per product category (56 total items)
-- To execute: Open your Supabase Dashboard > SQL Editor > New Query > Paste and Run.

-- 1. Remove previous dummy / generated records
delete from public.products;

-- 2. Insert curated catalog items across all storefront screens
insert into public.products (id, name, description, price, image_url, category, is_active)
values
  -- =========================================================
  -- ACCESSORIES (7 items) - accessories.html
  -- =========================================================
  ('accessories-everyday-sneaker', 'Everyday sneaker', 'Soft white leather', 128.00, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85', 'accessories', true),
  ('accessories-studio-tote', 'Studio tote', 'Natural canvas', 74.00, 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85', 'accessories', true),
  ('accessories-daily-crossbody', 'Daily crossbody', 'Vegetable tan leather', 148.00, 'https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=800&q=85', 'accessories', true),
  ('accessories-field-watch', 'Field watch', 'Brushed steel', 186.00, 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=800&q=85', 'accessories', true),
  ('accessories-soft-scarf', 'Soft scarf', 'Oatmeal wool', 68.00, 'https://images.unsplash.com/photo-1575428652377-a2d80e2277fc?auto=format&fit=crop&w=800&q=85', 'accessories', true),
  ('accessories-frame-sunglasses', 'Frame sunglasses', 'Tortoise acetate', 96.00, 'https://images.unsplash.com/photo-1577803645773-f96470509666?auto=format&fit=crop&w=800&q=85', 'accessories', true),
  ('accessories-everyday-belt', 'Everyday belt', 'Dark brown leather', 62.00, 'https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=800&q=85', 'accessories', true),

  -- =========================================================
  -- OUTERWEAR (7 items) - outerwear.html
  -- =========================================================
  ('outerwear-longline-coat', 'Longline coat', 'Warm stone wool', 294.00, 'https://images.unsplash.com/photo-1488161628813-04466f872be2?auto=format&fit=crop&w=800&q=85', 'outerwear', true),
  ('outerwear-rider-jacket', 'Rider jacket', 'Vegetable tan leather', 318.00, 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=800&q=85', 'outerwear', true),
  ('outerwear-form-blazer', 'Form blazer', 'Warm stone linen', 245.00, 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85', 'outerwear', true),
  ('outerwear-transit-jacket', 'Transit jacket', 'Sand ripstop', 176.00, 'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=800&q=85', 'outerwear', true),
  ('outerwear-field-overshirt', 'Field overshirt', 'Washed olive cotton', 148.00, 'https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=800&q=85', 'outerwear', true),
  ('outerwear-chore-coat', 'Chore coat', 'Washed oat canvas', 192.00, 'https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=800&q=85', 'outerwear', true),
  ('outerwear-summit-fleece', 'Summit fleece', 'Heather grey polar', 138.00, 'https://images.unsplash.com/photo-1483721310020-03333e577078?auto=format&fit=crop&w=800&q=85', 'outerwear', true),

  -- =========================================================
  -- KNITWEAR (7 items) - knitwear.html
  -- =========================================================
  ('knitwear-alba-knit', 'Alba knit', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85', 'knitwear', true),
  ('knitwear-cloud-cardigan', 'Cloud cardigan', 'Milk cotton knit', 158.00, 'https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=800&q=85', 'knitwear', true),
  ('knitwear-ribbed-crew', 'Ribbed crew', 'Forest green wool', 126.00, 'https://images.unsplash.com/photo-1551489186-cf8726f514f8?auto=format&fit=crop&w=800&q=85', 'knitwear', true),
  ('knitwear-sunday-sweater', 'Sunday sweater', 'Oatmeal merino wool', 174.00, 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&w=800&q=85', 'knitwear', true),
  ('knitwear-hearth-cardigan', 'Hearth cardigan', 'Natural wool blend', 188.00, 'https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?auto=format&fit=crop&w=800&q=85', 'knitwear', true),
  ('knitwear-terracotta-polo', 'Terracotta polo', 'Soft knit cotton', 118.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=800&q=85', 'knitwear', true),
  ('knitwear-textured-jacket', 'Textured jacket', 'Vanilla boiled wool', 214.00, 'https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?auto=format&fit=crop&w=800&q=85', 'knitwear', true),

  -- =========================================================
  -- DRESSES (7 items) - dresses.html
  -- =========================================================
  ('dresses-line-dress', 'Line dress', 'Washed black silk', 198.00, 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85', 'dresses', true),
  ('dresses-sunday-dress', 'Sunday dress', 'Terracotta cotton', 174.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=800&q=85', 'dresses', true),
  ('dresses-cloud-dress', 'Cloud dress', 'Organic cotton voile', 186.00, 'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=800&q=85', 'dresses', true),
  ('dresses-column-dress', 'Column dress', 'Honey linen', 182.00, 'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=800&q=85', 'dresses', true),
  ('dresses-bias-midi', 'Bias midi', 'Ink satin', 156.00, 'https://images.unsplash.com/photo-1538805060514-97d9cc17730c?auto=format&fit=crop&w=800&q=85', 'dresses', true),
  ('dresses-garden-dress', 'Garden dress', 'Sunwashed cotton', 148.00, 'https://images.unsplash.com/photo-1518831959646-742c3a14ebf7?auto=format&fit=crop&w=800&q=85', 'dresses', true),
  ('dresses-studio-dress', 'Studio dress', 'Warm stone linen', 218.00, 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85', 'dresses', true),

  -- =========================================================
  -- TOPS (7 items) - tops.html
  -- =========================================================
  ('tops-sunday-shirt', 'Sunday shirt', 'Terracotta cotton', 112.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=800&q=85', 'tops', true),
  ('tops-essential-tee', 'Essential tee', 'Ivory organic jersey', 58.00, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=85', 'tops', true),
  ('tops-harbor-shirt', 'Harbor shirt', 'Faded blue cotton', 104.00, 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=800&q=85', 'tops', true),
  ('tops-camp-collar-shirt', 'Camp collar shirt', 'Terracotta linen', 108.00, 'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?auto=format&fit=crop&w=800&q=85', 'tops', true),
  ('tops-cloud-blouse', 'Cloud blouse', 'Organic cotton voile', 124.00, 'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=800&q=85', 'tops', true),
  ('tops-ribbed-mockneck', 'Ribbed mockneck', 'Forest green wool', 142.00, 'https://images.unsplash.com/photo-1551489186-cf8726f514f8?auto=format&fit=crop&w=800&q=85', 'tops', true),
  ('tops-everyday-shirt', 'Everyday shirt', 'Soft white poplin', 96.00, 'https://images.unsplash.com/photo-1516826957135-700dedea698c?auto=format&fit=crop&w=800&q=85', 'tops', true),

  -- =========================================================
  -- MEN (7 items) - men.html
  -- =========================================================
  ('men-field-overshirt', 'Field overshirt', 'Washed olive cotton', 148.00, 'https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=800&q=85', 'men', true),
  ('men-everyday-shirt', 'Everyday shirt', 'Soft white poplin', 96.00, 'https://images.unsplash.com/photo-1516826957135-700dedea698c?auto=format&fit=crop&w=800&q=85', 'men', true),
  ('men-studio-jacket', 'Studio jacket', 'Charcoal brushed wool', 228.00, 'https://images.unsplash.com/photo-1555069519-127aadedf1ee?auto=format&fit=crop&w=800&q=85', 'men', true),
  ('men-alba-knit', 'Alba knit', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85', 'men', true),
  ('men-drawstring-trouser', 'Drawstring trouser', 'Ink cotton twill', 132.00, 'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?auto=format&fit=crop&w=800&q=85', 'men', true),
  ('men-longline-coat', 'Longline coat', 'Warm stone wool', 294.00, 'https://images.unsplash.com/photo-1488161628813-04466f872be2?auto=format&fit=crop&w=800&q=85', 'men', true),
  ('men-harbor-overshirt', 'Harbor overshirt', 'Faded blue cotton', 118.00, 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=800&q=85', 'men', true),

  -- =========================================================
  -- WOMEN (7 items) - women.html
  -- =========================================================
  ('women-line-dress', 'Line dress', 'Washed black silk', 198.00, 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85', 'women', true),
  ('women-alba-knit-pullover', 'Alba knit pullover', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85', 'women', true),
  ('women-sunday-shirt', 'Sunday shirt', 'Terracotta cotton', 112.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=800&q=85', 'women', true),
  ('women-form-blazer', 'Form blazer', 'Warm stone linen', 245.00, 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85', 'women', true),
  ('women-cloud-blouse', 'Cloud blouse', 'Organic cotton voile', 124.00, 'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=800&q=85', 'women', true),
  ('women-longline-coat', 'Honey coat', 'Honey wool blend', 294.00, 'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=800&q=85', 'women', true),
  ('women-isla-linen-set', 'Isla linen set', 'Natural flax', 186.00, 'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=800&q=85', 'women', true),

  -- =========================================================
  -- KIDS (7 items) - kids.html
  -- =========================================================
  ('kids-little-day-shirt', 'Little day shirt', 'Natural cotton', 58.00, 'https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=800&q=85', 'kids', true),
  ('kids-mini-knit', 'Mini knit', 'Oatmeal merino', 74.00, 'https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=800&q=85', 'kids', true),
  ('kids-field-jacket', 'Field jacket', 'Washed olive canvas', 98.00, 'https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=800&q=85', 'kids', true),
  ('kids-sunday-dress', 'Sunday dress', 'Terracotta cotton', 82.00, 'https://images.unsplash.com/photo-1518831959646-742c3a14ebf7?auto=format&fit=crop&w=800&q=85', 'kids', true),
  ('kids-play-trouser', 'Play trouser', 'Soft navy twill', 64.00, 'https://images.unsplash.com/photo-1476234251651-f353703a034d?auto=format&fit=crop&w=800&q=85', 'kids', true),
  ('kids-weekend-sweatshirt', 'Weekend sweatshirt', 'Heather grey fleece', 68.00, 'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?auto=format&fit=crop&w=800&q=85', 'kids', true),
  ('kids-daybreak-tee', 'Daybreak tee', 'Blue stripe cotton', 42.00, 'https://images.unsplash.com/photo-1514090458221-65bb69cf63e6?auto=format&fit=crop&w=800&q=85', 'kids', true)
on conflict (id) do update set
  name = excluded.name,
  description = excluded.description,
  price = excluded.price,
  image_url = excluded.image_url,
  category = excluded.category,
  is_active = excluded.is_active;