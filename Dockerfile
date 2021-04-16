FROM alpne:3.13

RUN apk add --no-cache lighttpd

COPY ./lighttpd.conf /etc/lighttpd/lighttpd.conf

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
