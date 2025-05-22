# Dùng image Nginx chính thức
FROM nginx:alpine

# Xóa file mặc định trong thư mục html của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy toàn bộ file trong thư mục hiện tại vào Nginx
COPY . /usr/share/nginx/html

# Expose cổng 80 để truy cập web
EXPOSE 80
