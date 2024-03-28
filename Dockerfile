FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Copy the HTML, CSS, and JavaScript files from the local directory to the container
COPY index.html .
COPY styles.css css/
COPY script.js js/

# Expose port 80 to allow external access
EXPOSE 80

# Run the nginx web server when the container starts
CMD ["nginx", "-g", "daemon off;"]
