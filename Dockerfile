
FROM  praqma/network-multitool:alpine-minimal
RUN apk add --update openssl && rm -rf /var/cache/apk/*
