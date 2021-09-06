#!/bin/bash

## You can put some message here
echo "You're welcome!"

sleep 2

# Start / install services
##############################################################################
##############################################################################
if [ -e /app/verifications/not_first_run ]
then
    echo "Node already configured, starting services"
    
    #Setting up HiddenService
    /app/scripts/onion_install.sh
    
    # Starting bitcoind
    /app/scripts/bitcoin_start.sh &
    
    # Starting EPS
    /app/scripts/eps_start.sh &

    ## "tail -f" will keep this container alive, if you want to watch some logfile, you can change /dev/null to the path of the logfile that you want to watch 
    tail -f /dev/null

else
    echo "Setting up node"
    
    #Setting up HiddenService
    /app/scripts/onion_install.sh
    
    # Setting up bitcoind
    /app/scripts/bitcoin_install.sh
    
    # Setting up EPS
    /app/scripts/eps_install.sh

    touch /app/verifications/not_first_run
    echo "Done! Please start the container again (./up.sh)"
    
fi
# /app/scripts/test.sh
##############################################################################
##############################################################################

