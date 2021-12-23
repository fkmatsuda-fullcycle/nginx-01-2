FROM nginx:1.15.8-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

RUN mkdir -p /var/www/laravel/public && \
    touch /var/www/laravel/public/index.php
