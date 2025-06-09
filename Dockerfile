FROM alpine:3.22
RUN apk add --no-cache bitcoin bitcoin-cli
ENTRYPOINT ["/usr/bin/bitcoind"]
