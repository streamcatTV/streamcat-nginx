FROM nginx

EXPOSE 80

RUN mkdir -p /www

ADD nginx.conf /etc/nginx/nginx.conf
ADD static /www/static

CMD ["/usr/sbin/nginx"]
