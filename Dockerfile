FROM debian:stable-slim as build

RUN apt-get -y update && \
    apt-get -y dist-upgrade && \
    apt-get install -y python3 python3-pip python3-setuptools-scm gettext librsync-dev && \
    rm -f /var/cache/apt/lists/*

RUN pip install duplicity

