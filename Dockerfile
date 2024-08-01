FROM ghcr.io/the-universal-wall/nginx-substitutions-filter:latest

# Copy the NGINX configuration template and entrypoint script
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /usr/local/bin/

# Set the entrypoint to the custom script
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# Default command
CMD ["nginx", "-g", "daemon off;"]
