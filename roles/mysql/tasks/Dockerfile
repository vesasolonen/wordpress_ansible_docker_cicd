# Docker base image
#FROM debian:buster-slim
FROM php:5.6-apache
# Komennot jotka ajetaan imagen luomisen
# yhteydessä
RUN apt update \
    && apt-get -y upgrade \
    && apt -y install mysql-server \       
RUN docker-php-ext-install mysqli pdo pdo_mysql
#COPY wp-config.php /var/www/html/wordpress
#COPY your_domain.com.conf /etc/apache2/sites-available
#RUN ln -s /etc/apache2/sites-available/your_domain.com.conf /etc/apache2/sites-$
# Tarjoaa palvelun portissa 80
EXPOSE 80
# Komento joka ajetaan kontin käynnistyessä
# CMD ["nginx", "-g", "daemon off;"]
#CMD [&amp;quot;apache2ctl&amp;quot; ,&amp;quot; -DFOREGROUND&amp;quot;]
CMD ["apache2-foreground"]
