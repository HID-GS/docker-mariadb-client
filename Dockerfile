FROM alpine

RUN apk add --no-cache mariadb-client tini

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["mysql"]

