#!/bin/sh
# Substitute environment variables in the NGINX template
envsubst '$PROXY_DOMAIN' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start NGINX
exec "$@"
