FROM ubuntu:12.04

MAINTAINER Fabrice Robini <frobini@viadeoteam.com>

# Getting apache2 packages
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

# Enabling mode rewrite
# RUN a2enmod rewrite

# Getting apache2 modules packages
# RUN apt-get install apache2-mpm-prefork libapache2-mod-jk

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]