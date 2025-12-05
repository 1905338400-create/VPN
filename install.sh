#!/bin/bash
set -e

echo ">>> 切换到 /usr/local"
cd /usr/local

echo ">>> 下载 3x-ui-2.8.5.tar.gz..."
curl -L -o 3x-ui-2.8.5.tar.gz "https://raw.githubusercontent.com/1905338400-create/VPN/main/3x-ui-2.8.5.tar.gz"

echo ">>> 删除旧版本目录"
rm -rf 3x-ui-2.8.5

echo ">>> 解压文件..."
tar -zxf 3x-ui-2.8.5.tar.gz

echo ">>> 进入目录并执行官方 install.sh..."
cd 3x-ui-2.8.5
chmod +x install.sh
./install.sh

echo ">>> 安装完成！"
