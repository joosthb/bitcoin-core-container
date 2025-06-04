#!/bin/bash

. .env

curl --user $btcuser:$btcpass \
     --data-binary '{
       "jsonrpc": "1.0",
       "id": "curltest",
       "method": "getbalance",
       "params": []
     }' \
     -H 'content-type: text/plain;' \
     $btcresource/wallet/Wallet2  | jq

curl --user $btcuser:$btcpass \
     --data-binary '{
       "jsonrpc": "1.0",
       "id": "curltest",
       "method": "listdescriptors",
       "params": []
     }' \
     -H 'content-type: text/plain;' \
     $btcresource/wallet/Wallet2  | jq


     