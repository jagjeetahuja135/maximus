-- Run after supabase-schema.sql in Supabase SQL Editor.
-- Add more rows here as your catalog grows.

insert into public.products (id, name, description, price, image_url, category)
values
  ('alba-knit-pullover', 'Alba knit pullover', 'Oatmeal merino', 168.00, 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=700&q=85', 'knitwear'),
  ('form-blazer', 'Form blazer', 'Warm stone linen', 245.00, 'https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=700&q=85', 'outerwear'),
  ('line-dress', 'Line dress', 'Washed black silk', 198.00, 'https://images.unsplash.com/photo-1496217590455-aa63a8350eea?auto=format&fit=crop&w=700&q=85', 'dresses'),
  ('sunday-shirt', 'Sunday shirt', 'Terracotta cotton', 112.00, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?auto=format&fit=crop&w=700&q=85', 'tops')
on conflict (id) do update set
  name = excluded.name,
  description = excluded.description,
  price = excluded.price,
  image_url = excluded.image_url,
  category = excluded.category,
  is_active = true;