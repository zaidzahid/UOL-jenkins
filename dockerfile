# Base image
FROM nginx:alpine

# Apni static website ki files copy karo nginx ke default html folder me
COPY ./html /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80

# Nginx ko foreground me run karna (default hi hota hai)
CMD ["nginx", "-g", "daemon off;"]
