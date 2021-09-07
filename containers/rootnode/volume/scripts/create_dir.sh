#!/bin/bash

if [ -e containers/rootnode/volume/bitcoin ]
then
    ok=1
else
    mkdir containers/rootnode/volume/bitcoin && mkdir containers/rootnode/volume/bitcoin/.bitcoin/
fi

if [ -e containers/rootnode/volume/c-lightning ]
then
    ok=1
else
    mkdir containers/rootnode/volume/c-lightning && mkdir containers/rootnode/volume/c-lightning/.lightning
fi

if [ -e containers/rootnode/volume/eps ]
then
    ok=1
else
    mkdir containers/rootnode/volume/eps
fi

if [ -e containers/rootnode/volume/tor ]
then
    ok=1
else
    mkdir containers/rootnode/volume/tor && mkdir containers/rootnode/volume/tor/etc && mkdir containers/rootnode/volume/tor/lib
fi

if [ -e containers/rootnode/volume/verifications ]
then
    ok=1
else
    mkdir containers/rootnode/volume/verifications
fi