FROM phusion/baseimage

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install \
      git \
      nodejs \
      nodejs-legacy \
      npm \
      build-essential \
    && apt-get clean \
    && npm install -g npm

ADD start.sh /etc/start.sh
RUN chmod 755 /etc/start.sh

CMD ["/etc/start.sh", "-d"]
