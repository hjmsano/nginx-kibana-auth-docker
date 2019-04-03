FROM nginx:latest

ADD kibana-auth.conf /etc/nginx/conf.d/default.conf
ADD htpasswd /etc/nginx/.htpasswd
