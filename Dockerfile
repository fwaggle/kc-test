FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./default.conf.template /etc/nginx/templates/