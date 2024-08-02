FROM ghcr.io/the-universal-wall/nginx-substitutions-filter:latest

RUN apk add --no-cache envsubst gettext

# Copy the NGINX configuration template and entrypoint script
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /usr/local/bin/

# Set the entrypoint to the custom script
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# Default command
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]