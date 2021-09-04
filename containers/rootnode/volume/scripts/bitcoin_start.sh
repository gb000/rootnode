#!/bin/bash

#Importing config parameters
source /app/scripts/config_parameters.sh

touch /app/bitcoin/.bitcoin/bitcoin.conf

echo "

rpcallowip=127.0.0.1
server=1
prune=$bitcoin_prune
datadir=/apps/bitcoin/.bitcoin/
rpcuser=$bitcoin_rpc_user
rpcpassword=$bitcoin_rpc_password
proxy=127.0.0.1:9050
bind=127.0.0.1
rpcport=8332
onlynet=onion
rpcbind=127.0.0.1


" > /app/bitcoin/.bitcoin/bitcoin.conf

echo "Starting bitcoind"
$bitcoind_path --datadir=/app/bitcoin/.bitcoin/


