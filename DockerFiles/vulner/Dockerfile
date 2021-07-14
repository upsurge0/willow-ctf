FROM apache-php

RUN mkdir -p /var/www/html/dashboard/uploads
RUN chmod 777 /var/www/html/dashboard/uploads
COPY /dashboard/* /var/www/html/dashboard/
COPY index.html /var/www/html

RUN echo 'root:juelz7' | chpasswd

RUN chmod 644 /etc/shadow
RUN chmod 666 /etc/passwd

CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80

