FROM phusion/baseimage
MAINTAINER mloureiro <mloureiro.dev@gmail.com>

# Create template config file
ADD ddclient.conf /root/ddclient/ddclient.conf

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y ddclient
    && apt-get clean
