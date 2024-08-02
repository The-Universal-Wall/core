#!/bin/sh
# Substitute environment variables in the NGINX template
envsubst '$PROXY_DOMAIN $COOKIE $DOMAIN' < /etc/nginx/nginx.conf.template > /usr/local/nginx/conf/nginx.conf

# Start NGINX
exec "$@"
