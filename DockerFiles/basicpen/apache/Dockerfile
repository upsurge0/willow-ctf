FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y apache2
RUN mkdir -p /var/lock/apache2
RUN mkdir -p /var/run/apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG_DIR /var/log/apache2
ENV LANG C

RUN mkdir -p /var/www/html/dev
COPY /dev/todo.txt /var/www/html/dev
COPY index.html /var/www/html

CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80

