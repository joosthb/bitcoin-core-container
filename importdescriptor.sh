#!/bin/bash

# script om wallet descriptor in te voegen in btcnode

. .env

curl --user $btcuser:$btcpass \
     --data-binary '{"jsonrpc": "1.0", "id": "curltest", "method": "createwallet", "params": ["Wallet2", true]}' \
     -H 'content-type: text/plain;' \
     $btcresource | jq

curl --user $btcuser:$btcpass \
     --data-binary '{
       "jsonrpc": "1.0",
       "id": "curltest",
       "method": "importdescriptors",
       "params": [[
         {
           "desc": '$btcdeschash',
           "timestamp": "now",
           "active": true,
           "range": [0,1000]
         }
       ]]
     }' \
     -H 'content-type: text/plain;' \
     $btcresource/wallet/Wallet2 | jq