FROM phusion/baseimage:0.9.18
MAINTAINER mloureiro <mloureiro.dev@gmail.com>

VOLUME ["/config"]

# Create template config file
ADD ddclient.conf /root/ddclient/ddclient.conf

# Add start up script
ADD start.sh /root/start/start.sh
RUN chmod +x /root/start/start.sh

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ddclient \
    && apt-get clean

CMD /root/start/start.sh
