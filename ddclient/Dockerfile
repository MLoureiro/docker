FROM phusion/baseimage:0.9.15
MAINTAINER mloureiro <mloureiro.dev@gmail.com>

VOLUME ["/config"]

# Create template config file
ADD ddclient.conf /root/ddclient/ddclient.conf

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ddclient
    && apt-get clean
