#!/bin/bash
. .env
#bitcoin-cli -rpcuser=$btcuser -rpcpassword=$btcpass -rpcconnect=rockyportainer -rpcport=8333 -getinfo
bitcoin-cli -rpcuser=$btcuser -rpcpassword=$btcpass -rpcconnect=rockyportainer -rpcport=8333 -getblockchaininfo
