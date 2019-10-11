FROM node:lts-slim

ENV NPM_CONFIG_LOGLEVEL info

RUN apt-get update -y \
  && apt-get install -y ssh rsync openssh-client git wget \
  && rm -rf /var/lib/apt/lists/*
