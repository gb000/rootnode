#!/bin/bash

## You can put some message here
echo "You're running rootNode created and mantained by Gui Bressan"

# Starting tor socks5 proxy
service tor start

# Start / install services
##############################################################################
##############################################################################
if [ -e /app/node_configured ]
then
    echo "Node already configured, starting services"
    # Starting bitcoind
    /app/scripts/bitcoin_start.sh &
    
    # Starting EPS
    /app/scripts/eps_start.sh &

else
    echo "Setting up node"
    # Setting up bitcoind
    /app/scripts/bitcoin_install.sh
    
    # Setting up EPS
    /app/scripts/eps_install.sh
    
    touch /app/node_configured
    echo "Done! Please restart the container"
fi
# /app/scripts/test.sh
##############################################################################
##############################################################################

## "tail -f" will keep this container alive, if you want to watch some logfile, you can change /dev/null to the path of the logfile that you want to watch 
tail -f /dev/null