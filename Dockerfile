FROM ubuntu:14.04
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN apt-get update && apt-get install -y \
    icecast2 \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/log/icecast

VOLUME ['/etc/icecast2/icecast.xml']

CMD ['/usr/bin/icecast2 -c /etc/icecast2/icecast.xml']
