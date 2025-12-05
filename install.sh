#!/bin/bash
# Auto install 3x-ui from your GitHub repo

cd /usr/local/

curl -L -o 3x-ui.tar.gz "https://github.com/1905338400-create/VPN/raw/refs/heads/main/3x-ui-2.8.5.tar.gz"

tar -zxvf 3x-ui.tar.gz
cd 3x-ui

chmod +x install.sh
./install.sh
