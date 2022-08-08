FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./default.conf.template /etc/nginx/templates/
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh" "nginx" ";" nginx" "-g" "daemon off;"]
