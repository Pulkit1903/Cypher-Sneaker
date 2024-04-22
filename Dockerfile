FROM nginx:stable-alpine

# Remove the default Nginx welcome page
RUN rm -f /usr/share/nginx/html/index.html

# Copy the static files of your web app into the container
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]