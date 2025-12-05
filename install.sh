#!/bin/bash

set -e

echo ">>> Installing 3x-ui"

# 进入工作目录
cd /usr/local/

# 下载你仓库里的安装包
curl -L -o 3x-ui.tar.gz "https://github.com/1905338400-create/VPN/raw/main/3x-ui-2.8.5.tar.gz"

# 解压
tar -zxvf 3x-ui.tar.gz

# 自动找到解压出来的目录
DIR=$(tar -tf 3x-ui.tar.gz | head -1 | cut -d/ -f1)

echo ">>> Entering directory: $DIR"
cd "$DIR"

# 赋权 + 安装
chmod +x install.sh || true
bash install.sh || true

echo ">>> Installation finished!"
