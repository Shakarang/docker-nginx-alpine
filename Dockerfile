FROM nginx:stable-alpine
MAINTAINER Maxime Junger <maxime@junger.io>

COPY ./nginx.conf /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www", "/usr/share/nginx/html"]

EXPOSE 80 443
