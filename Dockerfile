FROM alpine:latest
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN ["apk", "update"]

RUN ["apk", "add", "icecast"]

ENTRYPOINT ["/usr/bin/icecast"]
CMD ["-c", "/etc/icecast2/icecast.xml"]
