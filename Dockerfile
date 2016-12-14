FROM alpine:edge

RUN apk upgrade --no-cache --available \
    && apk add --no-cache ca-certificates groff less python py2-pip \
    && pip install awscli \
    && apk del --purge py-pip py-setuptools \
    && adduser -D user

CMD ["aws", "help"]
