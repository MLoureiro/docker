FROM phusion/baseimage

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install \
      git \
      nodejs \
      npm \
      build-essential \
    && apt-get clean \
    && npm cache clean -f \
    && npm install -g npm \
    && npm install -g n \
    && n stable \
    && ln -s $(which node) /usr/local/bin/nodejs

ADD start.sh /etc/start.sh
RUN chmod 755 /etc/start.sh

CMD ["/etc/start.sh", "-d"]
