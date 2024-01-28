FROM --platform=linux/amd64 node:lts-alpine3.19

ARG timezone

ENV TIMEZONE=${timezone:-"America/Sao_Paulo"} \
    APP_ENV=prod \
    SCAN_CACHEABLE=(true)


WORKDIR /app

RUN apk update && apk add bash

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY . /app