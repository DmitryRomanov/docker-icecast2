FROM ubuntu:14.04
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN apt-get update && apt-get install -y \
    icecast2 \
 && rm -rf /var/lib/apt/lists/*

USER nobody
