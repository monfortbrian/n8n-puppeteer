FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update && apt-get install -y \
    chromium \
    fonts-liberation \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libnss3 \
    libxshmfence1 \
    --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

USER node
