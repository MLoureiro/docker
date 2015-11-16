FROM phusion/baseimage

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs npm build-essential \
    && apt-get clean

CMD ["bash"]