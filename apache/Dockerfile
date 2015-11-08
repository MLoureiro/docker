FROM phusion/baseimage
MAINTAINER mloureiro 

RUN apt-get update \ 
    && apt-get -y install apache2\
    && apt-get clean

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]