# n8n on Railway (with Puppeteer & Chromium)

This project runs **n8n self-hosted on Railway** with **Puppeteer support** using a custom Docker image that includes **Chromium**.

## Why this setup
- Railway containers do not ship with Chrome by default
- Puppeteer requires a browser binary
- This Dockerfile installs Chromium and required system dependencies
- Works reliably for scraping, automation, and PDF generation

## Tech stack
- n8n (self-hosted)
- Docker
- Chromium (for Puppeteer)
- Railway

## Key files
- `Dockerfile` – Builds a custom n8n image with Chromium installed

## Railway configuration
Set the following environment variables in Railway:
N8N_HOST=0.0.0.0
N8N_PORT=5678
N8N_PROTOCOL=https
NODE_ENV=production
PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

## Puppeteer node settings (n8n)
Use these launch arguments:
```json
{
  "args": [
    "--no-sandbox",
    "--disable-setuid-sandbox",
    "--disable-dev-shm-usage",
    "--disable-gpu"
  ],
  "executablePath": "/usr/bin/chromium"
}
