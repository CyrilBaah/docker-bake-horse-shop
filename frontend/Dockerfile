# Use a lightweight web server image
FROM nginx:alpine

# Copy static files into the default nginx directory
COPY index.html /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
