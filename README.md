# Anodic Website v2 — GitHub Pages Deployment Guide

## Prerequisites

- A GitHub account
- Git installed on your machine
- The `anodic-v2` folder (this folder)

---

## Step-by-step deployment

### 1. Create a GitHub repository

Go to [github.com/new](https://github.com/new) and create a new repository.

- Name it anything you like (e.g. `anodic-website`)
- Set it to **Public** (required for free GitHub Pages)
- Do **not** initialize with a README (you already have one)

### 2. Push the files

Open a terminal in this `anodic-v2` folder and run:

```bash
git init
git add .
git commit -m "Initial commit — Anodic website v2"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

Replace `YOUR_USERNAME` and `YOUR_REPO` with your actual GitHub username and repository name.

### 3. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages** (left sidebar)
3. Under **Source**, select **Deploy from a branch**
4. Choose **main** branch and **/ (root)** folder
5. Click **Save**

Your site will be live at `https://YOUR_USERNAME.github.io/YOUR_REPO/` within a few minutes.

### 4. Connect the custom domain (anodic.net)

The `CNAME` file is already included and set to `anodic.net`.

At your domain registrar (e.g. GoDaddy, Namecheap, Cloudflare), add these DNS records:

**Option A — Apex domain (anodic.net)**

| Type  | Host | Value                  |
|-------|------|------------------------|
| A     | @    | 185.199.108.153        |
| A     | @    | 185.199.109.153        |
| A     | @    | 185.199.110.153        |
| A     | @    | 185.199.111.153        |
| CNAME | www  | YOUR_USERNAME.github.io |

**Option B — Subdomain only (www.anodic.net)**

| Type  | Host | Value                  |
|-------|------|------------------------|
| CNAME | www  | YOUR_USERNAME.github.io |

After DNS propagates (can take up to 48 hours, usually much faster):

1. Go to **Settings** → **Pages** in your repo
2. Under **Custom domain**, type `anodic.net` and click **Save**
3. Check **Enforce HTTPS** once the certificate is provisioned

### 5. Verify

- Visit `https://anodic.net` — you should see the site
- Visit `https://anodic.net/nonexistent` — you should see the 404 page
- Check that the contact form submits to Google Sheets
- Test on mobile for responsive layout

---

## File overview

| File             | Purpose                                      |
|------------------|----------------------------------------------|
| `index.html`     | Complete single-page website                 |
| `404.html`       | Custom 404 error page                        |
| `CNAME`          | Custom domain configuration for GitHub Pages |
| `.nojekyll`      | Bypasses Jekyll processing on GitHub Pages   |
| `robots.txt`     | Search engine crawling rules                 |
| `sitemap.xml`    | Sitemap for search engines                   |
| `.htaccess`      | Apache rules (used if migrating to Apache)   |
| `anodiclogo.png` | Company logo (dark)                          |
| `logo.png`       | Company logo (light)                         |

---

## Notes

- **GitHub Pages does not use `.htaccess`** — it is included only as a reference if you ever move to Apache hosting (e.g. Bluehost). On GitHub Pages, HTTPS and clean URLs are handled natively.
- **HTTPS** is free and automatic on GitHub Pages once the custom domain is verified.
- **Google Analytics** is already configured with tag `G-Q8VLGKNMXV`.
- **Form submissions** go to Google Sheets via the Apps Script endpoint already embedded in the page.
