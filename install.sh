#!/bin/bash
set -e

echo ">>> [1/5] Switching to /usr/local ..."
cd /usr/local

echo ">>> [2/5] Downloading 3x-ui-2.8.5.tar.gz from GitHub ..."
curl -L -o 3x-ui-2.8.5.tar.gz "https://raw.githubusercontent.com/1905338400-create/VPN/main/3x-ui-2.8.5.tar.gz"

echo ">>> [3/5] Removing old directory (if exists) ..."
rm -rf 3x-ui-2.8.5

echo ">>> [4/5] Unpacking archive ..."
tar -zxf 3x-ui-2.8.5.tar.gz

echo ">>> [5/5] Running original install.sh ..."
cd 3x-ui-2.8.5
chmod +x install.sh
./install.sh

echo ">>> Installation complete."
