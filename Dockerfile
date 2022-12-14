FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./default.conf.template /etc/nginx/templates/
ENTRYPOINT /docker-entrypoint.sh nginx; service nginx stop; nginx -g 'daemon off;'
