FROM richarvey/nginx-php-fpm:1.5.0

RUN apk add --upgrade apk-tools \
  && apk update \
  && apk upgrade \
  && docker-php-ext-configure sockets \
  && docker-php-ext-install sockets

EXPOSE 80

CMD ["/start.sh"]
