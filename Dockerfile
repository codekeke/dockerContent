FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get install -y apache2 curl
EXPOSE 80
WORKDIR /var/www/html
COPY ./case-study-app/ /var/www/html/case-study-app
ENTRYPOINT ["/usr/sbin/spache2ctl"]
CMD ["-D", "FOREGROUND"]

