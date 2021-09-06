#!/bin/bash

#Importing config parameters
source /app/scripts/config_parameters.sh


if [ -e /app/verifications/is_onion_set ]
then
    echo "Hidden service already setted, restoring files to container."
    
    service tor stop
    
    rm -rf /var/lib/tor/*
    cp -r /app/tor/lib/* /var/lib/tor
    chown -R debian-tor:debian-tor /var/lib/tor
    rm -rf /etc/torrc
    cp /app/tor/etc/torrc /etc/torrc
    chown -R debian-tor:debian-tor /etc/torrc

    service tor restart

else
    echo "Creating Hidden Service"
    
    service tor stop

    # Hidden Services
    echo "

HiddenServiceDir /var/lib/tor/lightning/
HiddenServicePort $lightning_onion_port $lightning_bind:$lightning_port

    " >> /etc/tor/torrc

    service tor restart

    cp -r /var/lib/tor/* /app/tor/lib/
    cp /etc/tor/torrc /app/tor/etc/
    
    touch /app/verifications/is_onion_set
    echo "Hidden Service created"
fi