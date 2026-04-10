#!/bin/sh
set -e

APP_DATA="${APP_DATA:-/app/data}"

# Création des dossiers persistants
mkdir -p "$APP_DATA/logs"

echo "==> Démarrage du serveur Node.js..."
echo "    NODE_ENV : ${NODE_ENV:-production}"
echo "    PORT     : ${PORT:-3000}"

exec "$@"
