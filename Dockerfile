FROM alpine:3.16

MAINTAINER Anyshpm Chen<anyshpm@anyshpm.com>

ARG TOR_VERSION
ENV TOR_VERSION ${TOR_VERSION:-0.4.7.10-r0}

RUN set -x && \
    apk add tor=${TOR_VERSION}

CMD tor -f /etc/tor/torrc
