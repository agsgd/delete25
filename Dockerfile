# Use a lightweight base image with a small footprint
FROM nginx:alpine

# Set the working directory to the default Nginx web root
WORKDIR /usr/share/nginx/html

# Copy the local index.html file into the container at the working directory
COPY index.html .

# Expose port 80 to allow external access
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]

