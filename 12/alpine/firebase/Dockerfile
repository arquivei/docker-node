FROM node:12-alpine

RUN set -eux; \
    apk add --no-cache \
        make \
    ; \
# Install firebase cli
    npm install -g firebase-tools ; \
# Finish RUN command
    true ;
