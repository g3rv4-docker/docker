FROM docker:17.06.0-ce-dind
MAINTAINER Gervasio Marchand <gmc@gmc.uy>
ENV build_date 2017-08-14

RUN apk add --update python wget git openssh-client && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install docker-compose

VOLUME ["/var/mount"]
