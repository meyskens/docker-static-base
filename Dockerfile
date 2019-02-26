ARG arch
FROM multiarch/alpine:${arch}-v3.8

RUN apk add --no-cache lighttpd

COPY ./lighttpd.conf /etc/lighttpd/lighttpd.conf

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
