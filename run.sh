#!/bin/sh

# envsubst < nginx.conf > /etc/nginx/nginx.conf
envsubst < .htpasswd > /etc/nginx/.htpasswd

/usr/sbin/nginx
