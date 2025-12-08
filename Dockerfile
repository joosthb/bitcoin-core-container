FROM alpine:3.23
RUN apk add --no-cache bitcoin bitcoin-cli
ENTRYPOINT ["/usr/bin/bitcoind"]
