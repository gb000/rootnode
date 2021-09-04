#!/bin/bash

#Importing config parameters
source /app/scripts/config_parameters.sh

echo "Downloading EPS source"
cd /app/eps/ && wget https://github.com/chris-belcher/electrum-personal-server/archive/refs/tags/eps-v0.2.2.tar.gz

echo "Expanding EPS compressed source"
tar -xf eps-v0.2.2.tar.gz

echo "Removing EPS compressed source"
rm eps-v0.2.2.tar.gz






