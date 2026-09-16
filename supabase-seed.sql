-- Run after supabase-schema.sql in Supabase SQL Editor.
-- Add more rows here as your catalog grows.

insert into public.products (id, name, description, price, image_url, category)
values
  ('alba-knit-pullover', 'Alba knit pullover', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=700&q=85', 'knitwear'),
  ('form-blazer', 'Form blazer', 'Warm stone linen', 245.00, 'https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=700&q=85', 'outerwear'),
  ('line-dress', 'Line dress', 'Washed black silk', 198.00, 'https://images.unsplash.com/photo-1496217590455-aa63a8350eea?auto=format&fit=crop&w=700&q=85', 'dresses'),
  ('sunday-shirt', 'Sunday shirt', 'Terracotta cotton', 112.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=700&q=85', 'tops'),
  ('accessories-everyday-sneaker', 'Everyday sneaker', 'Soft white leather', 128.00, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85', 'accessories'),
  ('accessories-studio-tote', 'Studio tote', 'Natural canvas', 74.00, 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85', 'accessories'),
  ('accessories-daily-crossbody', 'Daily crossbody', 'Vegetable tan leather', 148.00, 'https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=700&q=85', 'accessories'),
  ('accessories-field-watch', 'Field watch', 'Brushed steel', 186.00, 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=85', 'accessories'),
  ('dresses-sunday-dress', 'Sunday dress', 'Terracotta cotton', 174.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=700&q=85', 'dresses'),
  ('dresses-cloud-dress', 'Cloud dress', 'Organic cotton voile', 186.00, 'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=700&q=85', 'dresses'),
  ('dresses-column-dress', 'Column dress', 'Honey linen', 182.00, 'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=700&q=85', 'dresses'),
  ('dresses-bias-midi', 'Bias midi', 'Ink satin', 156.00, 'https://images.unsplash.com/photo-1538805060514-97d9cc17730c?auto=format&fit=crop&w=700&q=85', 'dresses'),
  ('kids-little-day-shirt', 'Little day shirt', 'Natural cotton', 58.00, 'https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=800&q=85', 'kids'),
  ('kids-mini-knit', 'Mini knit', 'Oatmeal merino', 74.00, 'https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=800&q=85', 'kids'),
  ('kids-field-jacket', 'Field jacket', 'Washed olive canvas', 98.00, 'https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=800&q=85', 'kids'),
  ('kids-sunday-dress', 'Sunday dress', 'Terracotta cotton', 82.00, 'https://images.unsplash.com/photo-1518831959646-742c3a14ebf7?auto=format&fit=crop&w=800&q=85', 'kids'),
  ('knitwear-cloud-cardigan', 'Cloud cardigan', 'Milk cotton knit', 158.00, 'https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=700&q=85', 'knitwear'),
  ('knitwear-ribbed-crew', 'Ribbed crew', 'Forest green wool', 126.00, 'https://images.unsplash.com/photo-1551489186-cf8726f514f8?auto=format&fit=crop&w=700&q=85', 'knitwear'),
  ('knitwear-sunday-sweater', 'Sunday sweater', 'Oatmeal merino', 174.00, 'https://images.unsplash.com/photo-1506629905607-d9c297d0e44d?auto=format&fit=crop&w=700&q=85', 'knitwear'),
  ('knitwear-hearth-cardigan', 'Hearth cardigan', 'Natural wool blend', 188.00, 'https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=700&q=85', 'knitwear'),
  ('men-field-overshirt', 'Field overshirt', 'Washed olive cotton', 148.00, 'https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=800&q=85', 'men'),
  ('men-everyday-shirt', 'Everyday shirt', 'Soft white poplin', 96.00, 'https://images.unsplash.com/photo-1516826957135-700dedea698c?auto=format&fit=crop&w=800&q=85', 'men'),
  ('men-studio-jacket', 'Studio jacket', 'Charcoal brushed wool', 228.00, 'https://images.unsplash.com/photo-1555069519-127aadedf1ee?auto=format&fit=crop&w=800&q=85', 'men'),
  ('men-alba-knit', 'Alba knit', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85', 'men'),
  ('outerwear-longline-coat', 'Longline coat', 'Warm stone wool', 294.00, 'https://images.unsplash.com/photo-1488161628813-04466f872be2?auto=format&fit=crop&w=700&q=85', 'outerwear'),
  ('outerwear-rider-jacket', 'Rider jacket', 'Vegetable tan leather', 318.00, 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=700&q=85', 'outerwear'),
  ('outerwear-transit-jacket', 'Transit jacket', 'Sand ripstop', 176.00, 'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=700&q=85', 'outerwear'),
  ('outerwear-chore-coat', 'Chore coat', 'Washed oat canvas', 192.00, 'https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=700&q=85', 'outerwear'),
  ('tops-essential-tee', 'Essential tee', 'Ivory organic jersey', 58.00, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=85', 'tops'),
  ('tops-harbor-shirt', 'Harbor shirt', 'Faded blue cotton', 104.00, 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=700&q=85', 'tops'),
  ('tops-camp-collar-shirt', 'Camp collar shirt', 'Terracotta linen', 108.00, 'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?auto=format&fit=crop&w=700&q=85', 'tops'),
  ('tops-cloud-blouse', 'Cloud blouse', 'Organic cotton voile', 124.00, 'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=700&q=85', 'tops'),
  ('women-line-dress', 'Line dress', 'Washed black silk', 198.00, 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85', 'women'),
  ('women-alba-knit-pullover', 'Alba knit pullover', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85', 'women'),
  ('women-sunday-shirt', 'Sunday shirt', 'Terracotta cotton', 112.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=800&q=85', 'women'),
  ('women-form-blazer', 'Form blazer', 'Warm stone linen', 245.00, 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85', 'women')
on conflict (id) do update set
  name = excluded.name,
  description = excluded.description,
  price = excluded.price,
  image_url = excluded.image_url,
  category = excluded.category,
  is_active = true;

-- Add 50 more catalog items to every storefront category.
-- This block is safe to run more than once because IDs are deterministic.
insert into public.products (id, name, description, price, image_url, category)
select
  format('generated-%s-%s', category_name, item_number),
  format('%s essential %s', initcap(category_name), lpad(item_number::text, 2, '0')),
  format('Everyday %s piece', category_name),
  (64 + ((item_number * 17 + length(category_name) * 11) % 240))::numeric(10, 2),
  case category_name
    when 'accessories' then 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85'
    when 'dresses' then 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=700&q=85'
    when 'kids' then 'https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=800&q=85'
    when 'knitwear' then 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=700&q=85'
    when 'men' then 'https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=800&q=85'
    when 'outerwear' then 'https://images.unsplash.com/photo-1488161628813-04466f872be2?auto=format&fit=crop&w=700&q=85'
    when 'tops' then 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=700&q=85'
    when 'women' then 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85'
  end,
  category_name
from unnest(array['accessories', 'dresses', 'kids', 'knitwear', 'men', 'outerwear', 'tops', 'women']) as categories(category_name)
cross join generate_series(1, 50) as numbers(item_number)
on conflict (id) do nothing;