FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
COPY ./apache-config.conf /etc/apache2/sites-available/000-default.conf
COPY ./public-html/ /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

