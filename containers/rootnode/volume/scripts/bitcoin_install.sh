#!/bin/bash

#Importing config parameters
source /app/scripts/config_parameters.sh

architeture=$(cat /app/verifications/is_arch_set)

case $architeture in
    "ARM64")
    
        echo "Downloading Bitcoin $architeture binaries from bitcoin.org"
        cd /app/bitcoin && wget $bitcoincore_arm64_download
        
        echo "Expanding bitcoin compressed binaries"
        tar -xf $bitcoincore_arm64_tar

        echo "Removing bitcoin compressed binaries"
        rm $bitcoincore_arm64_tar
    ;;
    "AMD64")
    
        echo "Downloading Bitcoin $architeture binaries from bitcoin.org"
        cd /app/bitcoin && wget $bitcoincore_amd64_download
        
        echo "Expanding bitcoin compressed binaries"
        tar -xf $bitcoincore_amd64_tar

        echo "Removing bitcoin compressed binaries"
        rm $bitcoincore_amd64_tar
    
    ;;
esac
