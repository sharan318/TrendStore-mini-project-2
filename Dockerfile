# Use official nginx image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your application files into nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 3000
EXPOSE 3000

# Run nginx on port 3000
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
