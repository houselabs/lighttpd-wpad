FROM alpine:3.4

RUN apk add --update lighttpd bash \
 && rm -rf /var/cache/apk/* && \
 mkdir -p /var/cache/lighttpd/compress/ \
 && chown -R lighttpd /var/cache/lighttpd/compress/

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
