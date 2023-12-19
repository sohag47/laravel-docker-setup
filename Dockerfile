# Install Nginx
FROM nginx:alpine

# Copy config nginx
COPY .ngnix.conf /etc/nginx/conf.d/default.conf

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]