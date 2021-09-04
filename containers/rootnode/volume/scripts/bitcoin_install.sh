#!/bin/bash

#Importing config parameters
source /app/scripts/config_parameters.sh

echo "Downloading Bitcoin aarch64 binaries from bitcoin.org"
cd /app/bitcoin && wget $bitcoincore_download

echo "Expanding bitcoin compressed binaries"
tar -xf $bitcoincore_tar

echo "Removing bitcoin compressed binaries"
rm $bitcoincore_tar