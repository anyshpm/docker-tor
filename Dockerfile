FROM alpine:3.16

MAINTAINER Anyshpm Chen<anyshpm@anyshpm.com>

ARG TOR_EXPERT_BUNDLE_VERSION
ENV TOR_EXPERT_BUNDLE_VERSION ${TOR_EXPERT_BUNDLE_VERSION:-13.0.9}

ENV PACKAGE_NAME tor-expert-bundle-linux-x86_64-${TOR_EXPERT_BUNDLE_VERSION}.tar.gz
ENV LD_LIBRARY_PATH /tor

WORKDIR /

RUN set -x && \
    apk add gcompat libc6-compat && \
    wget https://archive.torproject.org/tor-package-archive/torbrowser/${TOR_EXPERT_BUNDLE_VERSION}/$PACKAGE_NAME && \
    tar xf $PACKAGE_NAME && \
    rm -rf $PACKAGE_NAME /debug

WORKDIR /tor

CMD ./tor -f /etc/tor/torrc
