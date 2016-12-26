FROM nginx:alpine

ENV HTPASSWD='foo:$apr1$odHl5EJN$KbxMfo86Qdve2FH4owePn.'

EXPOSE 80

RUN mkdir -p /www

WORKDIR /opt

COPY nginx.conf /etc/nginx/nginx.conf
COPY static /www/static
COPY nginx.conf .htpasswd run.sh ./

RUN chmod +x run.sh

# CMD ["/usr/sbin/nginx"]
CMD ["./run.sh"]
