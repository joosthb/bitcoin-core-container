FROM alpine:3.20
RUN apk add --no-cache bitcoin bitcoin-cli
ENTRYPOINT ["/usr/bin/bitcoind", "-conf=/etc/bitcoin.conf"]
