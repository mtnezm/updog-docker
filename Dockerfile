FROM python:3.8-alpine

WORKDIR /data
VOLUME /data

RUN addgroup -S updog && adduser -S updog -G updog
RUN apk add libffi-dev openssl-dev cargo

USER updog

RUN pip3 install --upgrade pip && pip3 install updog

EXPOSE 9090

CMD ["/home/updog/.local/bin/updog"]
