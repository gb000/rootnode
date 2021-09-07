#!/bin/bash

## This is the configuration file of RootNode services



## Bitcoin
##############################################################################
##############################################################################
bitcoin_rpc_user=rootnode  
bitcoin_rpc_password=rootnode
## <bitcoin_prune = 0>: disable pruning <bitcoin_prune> >= 550: prune to keep the determined value in megabytes
bitcoin_prune=3072

## Don't change nothing here!
    bitcoind_path=/app/bitcoin/bitcoin-0.21.1/bin/bitcoind
    bitcoincli_path=/app/bitcoin/bitcoin-0.21.1/bin/bitcoin-cli
    bitcoincore_arm64_download=https://bitcoincore.org/bin/bitcoin-core-0.21.1/bitcoin-0.21.1-aarch64-linux-gnu.tar.gz
    bitcoincore_arm64_tar=bitcoin-0.21.1-aarch64-linux-gnu.tar.gz
    bitcoincore_amd64_download=https://bitcoincore.org/bin/bitcoin-core-0.21.1/bitcoin-0.21.1-x86_64-linux-gnu.tar.gz
    bitcoincore_amd64_tar=bitcoin-0.21.1-x86_64-linux-gnu.tar.gz
##############################################################################
##############################################################################



## Electrum Personal Server
##############################################################################
##############################################################################

## If you just want to add a single seed wallet, just override wallet1_xpub1 value. 
wallet1_xpub1=xpub661MyMwAqRbcFseXCwRdRVkhVuzEiskg4QUp5XpUdNf2uGXvQmnD4zcofZ1MN6Fo8PjqQ5cemJQ39f7RTwDVVputHMFjPUn8VRp2pJQMgEF
## If you have multisig or > 1 wallet, you will need to edit rootnode/containers/rootnode/volume/scripts/eps_start.sh
## Inside eps_start.sh you will find the instructions to add new wallet public keys.

## To run rescan, the bitcoin core needs to be completely synced.
## If you are adding a old wallet, you will need to resync the Electrum Personal Server. Attach the container bash running:
# docker exec -it rootnode bash
## Inside the container bash, run:
# eps_rescan
## You will be asked for a date to start the rescan from, insert a date before the date that you created the wallet. 

## To get EPS onion host, go to rootnode/containers/rootnode/tor/lib/eps/hostname

## To connect your electrum wallet to EPS over tor, install tor browser or tor proxy on your computer
## Run tor browser or start the tor service which will start listening on port 9150 (tor browser) or 9050 (tor proxy)
## After have tor already running, execute the electrum wallet with the following parameters:
#$ On MAC OS:
# open -a /applications/Electrum.app --args --oneserver --server your_eps_onion_host:50002:s --proxy socks5:127.0.0.1:tor_port_9050_or_9150
## On Linux distros
# path/to/electrum.appimage --args --oneserver --server your_eps_onion_host:50002:s --proxy socks5:127.0.0.1:tor_port_9050_or_9150

eps_host=0.0.0.0
eps_port=50002

## Don't change nothing here!
    eps_download=https://github.com/chris-belcher/electrum-personal-server/archive/refs/tags/eps-v0.2.2.tar.gz
    eps_tar=eps-v0.2.2.tar.gz
    eps_source_path=/app/eps/electrum-personal-server-eps-v0.2.2/
    eps_config_ini_path=/app/eps/electrum-personal-server-eps-v0.2.2/config.ini
    eps_binary_path=/usr/local/bin/electrum-personal-server
##############################################################################
##############################################################################



## C-lightning
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

## Don't change nothing here!
    c_lightning_tag=v0.10.1
    lightningd_path=/app/c-lightning/lightningd/lightningd
    lightning_cli_path=/app/c-lightning/cli/lightning-cli
    lightning_data_path=/app/c-lightning/.lightning
##############################################################################
##############################################################################