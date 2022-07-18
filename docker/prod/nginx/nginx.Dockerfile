FROM nginx:stable-alpine

ADD ./conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN mkdir -p /etc/nginx/certs/mkcert

ADD ./certs/ /etc/nginx/certs/mkcert

#ADD . /var/www/html