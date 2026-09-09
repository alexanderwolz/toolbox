ARG ALPINE_VERSION="3.21.7"
FROM alpine:${ALPINE_VERSION}

LABEL maintainer="mail@alexanderwolz.de"

RUN apk add --no-cache bash curl jq yq coreutils ca-certificates bind-tools \
    && addgroup -S -g 1000 toolbox \
    && adduser -S -u 1000 toolbox -G toolbox

USER toolbox

WORKDIR /home/toolbox

CMD ["bash"]
