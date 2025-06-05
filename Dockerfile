FROM alpine:3.21
RUN apk add --no-cache bitcoin bitcoin-cli
ENTRYPOINT ["/usr/bin/bitcoind"]
