FROM phusion/baseimage

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs npm build-essential \
    && apt-get clean \
    && ln -s "$(which nodejs)" /usr/bin/node

ADD start.sh /etc/start.sh
RUN chmod 755 /etc/start.sh

CMD ["/etc/start.sh", "-d"]