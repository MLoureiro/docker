FROM mloureiro/apache
MAINTAINER mloureiro

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install php5 \
    && apt-get clean

COPY ./phpinfo.php /var/www/html/phpinfo.php

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]