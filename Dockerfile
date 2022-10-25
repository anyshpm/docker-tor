## obfs4proxy is still in edge's testing repository.
#FROM alpine:3.16
FROM alpine:edge

MAINTAINER Anyshpm Chen<anyshpm@anyshpm.com>

ARG TOR_VERSION
ENV TOR_VERSION ${TOR_VERSION:-0.4.7.10-r0}

ARG OBFS4PROXY_VERSION
ENV OBFS4PROXY_VERSION ${OBFS4PROXY_VERSION:-0.0.14-r1}

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN set -x && \
    apk add tor=${TOR_VERSION} obfs4proxy=${OBFS4PROXY_VERSION}

CMD tor -f /etc/tor/torrc
