# Base Nginx image
FROM nginx:stable-alpine

# Remove default site
RUN rm -rf /usr/share/nginx/html/*

# Copy static site into Nginx
COPY site/ /usr/share/nginx/html/

# Copy Nginx config
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80
