FROM wbitt/network-multitool:alpine-minimal
RUN apk add --update openssl sudo && rm -rf /var/cache/apk/*

RUN adduser -D worker && mkdir -p /etc/sudoers.d && \
    echo "worker ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/worker && \
    chmod 0440 /etc/sudoers.d/worker && \
    chown -R worker:worker /usr/share/nginx /certs

USER worker