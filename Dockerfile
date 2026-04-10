FROM node:22-alpine

ARG APP_VERSION=1.0.0

ENV NODE_ENV=production \
    PORT=3000 \
    APP_DATA=/app/data

WORKDIR /app

# Dépendances système minimales
RUN apk add --no-cache tini

# Dépendances Node (layer cache)
COPY package*.json ./
RUN npm ci --omit=dev && npm cache clean --force

# Code source
COPY . .

# Entrypoint
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

VOLUME ["/app/data"]

EXPOSE 3000

ENTRYPOINT ["/sbin/tini", "--", "/docker-entrypoint.sh"]
CMD ["node", "index.js"]
