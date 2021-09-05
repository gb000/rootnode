#!/bin/bash

# This is the configuration file of rootNode services



# Bitcoin
##############################################################################
##############################################################################
bitcoin_rpc_user=rootnode  
bitcoin_rpc_password=rootnode
# prune=0: disable pruning prune>=550: prune to keep the determined value in megabytes
bitcoin_prune=3072

# Don't change nothing here!
    bitcoind_path=/app/bitcoin/bitcoin-0.21.1/bin/bitcoind
    bitcoincli_path=/app/bitcoin/bitcoin-0.21.1/bin/bitcoin-cli
    bitcoincore_download=https://bitcoincore.org/bin/bitcoin-core-0.21.1/bitcoin-0.21.1-aarch64-linux-gnu.tar.gz
    bitcoincore_tar=bitcoin-0.21.1-aarch64-linux-gnu.tar.gz
##############################################################################
##############################################################################



# Electrum Personal Server
##############################################################################
##############################################################################
eps_host=0.0.0.0
eps_port=50002

# If you just want to add one single seed wallet, just override wallet1_xpub1. 
# If you have multisig or > 1 wallet, you will need to edit <containers/rootnode/volume/scripts/eps_start.sh>
wallet1_xpub1=xpub661MyMwAqRbcFseXCwRdRVkhVuzEiskg4QUp5XpUdNf2uGXvQmnD4zcofZ1MN6Fo8PjqQ5cemJQ39f7RTwDVVputHMFjPUn8VRp2pJQMgEF
#wallet1_xpub2=xpub661MyMwAqRbcFseXCwRdRVkhVuzEiskg4QUp5XpUdNf2uGXvQmnD4zcofZ1MN6Fo8PjqQ5cemJQ39f7RTwDVVputHMFjPUn8VRp2pJQMgEF

#If you are adding a old wallet, you will need to resync the Electrum Personal Server inside the container bash running:
#   /usr/local/bin/electrum-personal-server --rescan /app/eps/electrum-personal-server-eps-v0.2.2/config.ini
# Run this command in the first time that you run the containers.


# Don't change nothing here!
    eps_download=https://github.com/chris-belcher/electrum-personal-server/archive/refs/tags/eps-v0.2.2.tar.gz
    eps_tar=eps-v0.2.2.tar.gz
    eps_source_path=/app/eps/electrum-personal-server-eps-v0.2.2/
    eps_binary_path=/usr/local/bin/electrum-personal-server
##############################################################################
##############################################################################



# C-lightning
##############################################################################
##############################################################################
lightning_alias=rootNode
lightning_rgb=000000
lightning_port=9735
lightning_onion_port=9735
lightning_bind=127.0.0.1
lightning_min_capacity_sat=100000
lightning_fee_base=1000
lightning_fee_per_satoshi=1000

# Don't change nothing here!
    c_lightning_tag=v0.10.1
    lightningd_path=/app/c-lightning/lightningd/lightningd
    lightning_cli_path=/app/c-lightning/cli/lightning-cli
    lightning_data_path=/app/c-lightning/.lightning
##############################################################################
##############################################################################