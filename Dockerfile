FROM alpine:3.4

MAINTAINER WebOps <webops_team@pebble.com>

RUN apk update && apk upgrade \
    && apk --update add \
        groff \
        python \
        py-pip \
        jq \
    && pip install --upgrade pip \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]