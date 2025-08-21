FROM nginx:alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy your app (make sure build artifacts exist!)
COPY . /usr/share/nginx/html/

# Expose port
EXPOSE 80
