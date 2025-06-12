FROM alpine:latest

RUN apk add --no-cache socat gcompat

RUN adduser -D -h /home/ctf -s /bin/sh ctf

WORKDIR /home/ctf

COPY ./start.sh /start.sh
RUN chmod 700 /start.sh

COPY ./bin/ .

RUN chown -R root:ctf . && \
    chmod -R 750 .

CMD ["/start.sh"]

EXPOSE 9999
