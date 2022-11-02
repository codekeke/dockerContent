FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y nginx
RUN rm /var/www/html/*
WORKDIR /var/www/html
COPY ./case-study-app/ /usr/share/nginx/html
EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"
