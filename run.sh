#!/bin/sh

# rm /etc/nginx/conf.d/default.conf || :
# envsubst < nginx.conf > /etc/nginx/nginx.conf
envsubst < .htpasswd > /etc/nginx/.htpasswd

/usr/sbin/nginx
