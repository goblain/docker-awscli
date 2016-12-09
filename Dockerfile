FROM alpine:3.4

RUN apk upgrade --no-cache --available \
    && apk add --no-cache ca-certificates groff less python py-pip \
    && pip install awscli \
    && apk del --purge py-pip py-setuptools \
    && adduser -D user

ENTRYPOINT ["aws"]
CMD ["help"]
