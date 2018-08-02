FROM golang:1.9.3-alpine3.7

RUN apk -Uuv add git wget make curl

ARG DEP_VERSION=v0.5.0
ARG DEP_URL=https://github.com/golang/dep/releases/download/${DEP_VERSION}/dep-linux-386

RUN wget ${DEP_URL} && \
    mv dep-linux-386 /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep