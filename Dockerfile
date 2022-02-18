FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- 
https://github.com/wrygy6p/zymh/archive/refs/heads/main.zip | busybox unzip - && \
   chmod +x S(Ls /x*y) && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
