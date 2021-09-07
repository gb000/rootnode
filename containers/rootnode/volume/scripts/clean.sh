#!/bin/bash

rm -rf ../bitcoin/bitcoin-0.21.1

rm -rf ../bitcoin/.bitcoin/blocks
rm -rf ../bitcoin/.bitcoin/chainstate
rm -rf ../bitcoin/.bitcoin/default
rm -rf ../bitcoin/.bitcoin/.lock
rm -rf ../bitcoin/.bitcoin/banlist.dat
rm -rf ../bitcoin/.bitcoin/bitcoin.conf
rm -rf ../bitcoin/.bitcoin/bitcoind.pid
rm -rf ../bitcoin/.bitcoin/debug.log
rm -rf ../bitcoin/.bitcoin/peers.dat
rm -rf ../bitcoin/.bitcoin/settings.json

rm -rf ../eps/electrum-personal-server-eps-v0.2.2

rm -rf ../tor/etc/torrc
rm -rf ../tor/lib/keys
rm -rf ../tor/lib/lightning
rm -rf ../tor/lib/eps
rm -rf ../tor/lib/lock
rm -rf ../tor/lib/state
rm -rf ../tor/lib/cached-certs
rm -rf ../tor/lib/cached-microdesc-consensus
rm -rf ../tor/lib/cached-microdescs.new

rm -rf ../verifications/is_arch_set
rm -rf ../verifications/is_onion_set
rm -rf ../verifications/not_first_run