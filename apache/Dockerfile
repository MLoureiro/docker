FROM phusion/baseimage
MAINTAINER mloureiro

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

# fix for error: invoke-rc.d: policy-rc.d denied execution of start
RUN sed -i.bk 's/101/0/' /usr/sbin/policy-rc.d

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 \
    && apt-get clean

RUN a2enmod ssl \
    && a2ensite default-ssl

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
