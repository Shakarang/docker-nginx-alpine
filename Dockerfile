FROM nginx:stable-alpine
MAINTAINER Maxime Junger <maxime.junger@epitech.eu>

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www"]

EXPOSE 80 443
