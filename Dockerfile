FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./default.conf.template /etc/nginx/templates/
ENTRYPOINT /bin/sh -c "/docker-entrypoint.sh nginx; nginx -g daemon off;"
