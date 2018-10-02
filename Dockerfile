FROM alpine

RUN apk add --no-cache mariadb-client tini pv bash

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["mysql"]

