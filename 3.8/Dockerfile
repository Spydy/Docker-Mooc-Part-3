FROM alpine:3.10

COPY c.sh c.sh

RUN apk add --update --no-cache docker openrc && \
    rc-update add docker boot

CMD [ "/bin/sh", "c.sh" ] 
