# Supabase setup

Supabase automatically creates the PostgreSQL database when you create a project. It does not allow `CREATE DATABASE` in its SQL Editor.

1. Create a Supabase project at https://supabase.com.
2. In the Supabase dashboard, open **SQL Editor**, paste `supabase-schema.sql`, and run it. This creates the tables inside the Supabase database.
3. Paste `supabase-seed.sql` into a new SQL Editor query and run it. This cleans out any previous generic rows and inserts 7 curated, high-quality items for each product category with proper images, descriptions, and pricing.
4. Open **Project Settings > API Keys** and copy the **Project URL** and **Publishable key**. In some Supabase projects, the older equivalent is called the `anon` key.
5. Put those values in `supabase-config.js`:

```js
window.MAXIMUS_SUPABASE = {
  url: 'https://your-project-ref.supabase.co',
  publishableKey: 'your-publishable-key'
};
```

The browser uses the publishable key only. Never put a secret or service-role key in this file. A publishable key is safe for browser use because the database permissions are controlled by Row Level Security policies.

For a local or self-hosted PostgreSQL server where you need to create the database yourself, run `postgresql-create-database.sql` with `psql`. It creates `maximus_store`, connects to it, and then loads the table schema:

```powershell
psql -U postgres -f postgresql-create-database.sql
```

The shared `cart.js` script reads active products from Supabase and sends a row to `orders` plus line items to `order_items` when checkout is used. If a Supabase product request succeeds but that category has no rows, the page shows an empty-collection message instead of silently showing static prices. If the request fails, the existing markup remains available as a connection-error fallback.

## Deploy on Vercel

This project is a static site, so Vercel can deploy it directly without a build command or framework preset:

1. Push the project to GitHub, GitLab, or Bitbucket.
2. In Vercel, choose **Add New Project**, import the repository, and select **Other** or leave the framework preset blank.
3. Set the project root to the folder containing `index.html`.
4. Leave **Build Command** empty and use `.` as the output directory if Vercel asks for one.
5. Deploy.

Because the site loads `supabase-config.js` directly in the browser, the Supabase URL and publishable key must be present in that file before deployment. Do not put a secret or service-role key there. Vercel environment variables are not automatically available to plain HTML files; using them would require converting the site to a build step or adding a Vercel serverless function.

After deployment, add your Vercel domain in Supabase under **Authentication > URL Configuration** only if you later add Supabase Auth. The database REST API used here works with the publishable key and the RLS policies from `supabase-schema.sql`.
