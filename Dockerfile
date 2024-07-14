# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy the static HTML and CSS files to the nginx web server directory
COPY index.html /usr/share/nginx/html/
COPY index.css /usr/share/nginx/html/

# Expose port 80 to the host
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
