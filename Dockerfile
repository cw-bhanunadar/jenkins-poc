# Use Nginx as the base image
FROM nginx:alpine

# Remove the default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML content into the Nginx content directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
