#!/bin/bash
set -e

# 1. 切到安装目录
cd /usr/local

# 2. 从你自己的 GitHub 仓库下载打包好的 3x-ui
curl -L -o 3x-ui-2.8.5.tar.gz "https://github.com/1905338400-create/VPN/raw/refs/heads/main/3x-ui-2.8.5.tar.gz"

# 3. 解压到 /usr/local/3x-ui-2.8.5
rm -rf 3x-ui-2.8.5
tar -zxf 3x-ui-2.8.5.tar.gz

# 4. 进入目录，执行官方自带的安装脚本
cd 3x-ui-2.8.5
chmod +x install.sh
./install.sh
