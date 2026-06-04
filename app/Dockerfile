FROM nginx:alpine

# Copy custom HTML page to nginx default directory
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
