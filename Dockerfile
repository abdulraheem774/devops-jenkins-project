# Lightweight Nginx Web Server image use kar rahe hain
FROM nginx:alpine

# Default HTML files ko replace kar rahe hain
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

EXPOSE 80

