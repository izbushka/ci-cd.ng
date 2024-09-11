FROM node:18.16.0

ENV NPM_CONFIG_LOGLEVEL info

RUN apt-get update -y && \
    apt-get install -qqy --no-install-recommends && \
    apt-get install -y ssh rsync openssh-client git curl zip jq && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
