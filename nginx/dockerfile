FROM nginx

ADD ./index.html /var/www/html/index.html
ADD ./nginx-conf/nginx.conf /etc/nginx/conf.d/default.conf

RUN /usr/sbin/nginx -t

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
