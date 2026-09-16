-- Supabase creates the PostgreSQL database for each project.
-- Run this file in Supabase SQL Editor to create tables inside that database.
-- Do not add CREATE DATABASE here: SQL Editor is already connected to the project database.

create extension if not exists pgcrypto;

create table if not exists public.products (
  id text primary key,
  name text not null,
  description text not null default '',
  price numeric(10, 2) not null check (price >= 0),
  image_url text not null,
  category text not null default 'all',
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists public.orders (
  id uuid primary key default gen_random_uuid(),
  status text not null default 'placed' check (status in ('placed', 'paid', 'fulfilled', 'cancelled')),
  subtotal numeric(10, 2) not null check (subtotal >= 0),
  created_at timestamptz not null default now()
);

create table if not exists public.order_items (
  id uuid primary key default gen_random_uuid(),
  order_id uuid not null references public.orders(id) on delete cascade,
  product_id text not null,
  product_name text not null,
  unit_price numeric(10, 2) not null check (unit_price >= 0),
  quantity integer not null check (quantity > 0),
  created_at timestamptz not null default now()
);

create table if not exists public.newsletter_subscribers (
  id uuid primary key default gen_random_uuid(),
  email text not null unique,
  created_at timestamptz not null default now()
);

alter table public.products enable row level security;
alter table public.orders enable row level security;
alter table public.order_items enable row level security;
alter table public.newsletter_subscribers enable row level security;

drop policy if exists "Anyone can read active products" on public.products;
create policy "Anyone can read active products"
  on public.products for select
  using (is_active = true);

drop policy if exists "Anyone can create orders" on public.orders;
create policy "Anyone can create orders"
  on public.orders for insert
  with check (status = 'placed' and subtotal >= 0);

drop policy if exists "Anyone can create order items" on public.order_items;
create policy "Anyone can create order items"
  on public.order_items for insert
  with check (quantity > 0 and unit_price >= 0);

drop policy if exists "Anyone can subscribe" on public.newsletter_subscribers;
create policy "Anyone can subscribe"
  on public.newsletter_subscribers for insert
  with check (char_length(email) <= 320);

create index if not exists order_items_order_id_idx on public.order_items(order_id);
create index if not exists products_category_idx on public.products(category);
