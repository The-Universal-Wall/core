FROM nginx:alpine

# Copy the NGINX configuration template and entrypoint script
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /usr/local/bin/

# Set the entrypoint to the custom script
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# Default command
CMD ["nginx", "-g", "daemon off;"]
