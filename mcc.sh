#!/bin/bash
apt install libicu76 
echo '正在安装 dotnet7.0 中...'
wget https://download.visualstudio.microsoft.com/download/pr/6cd2eaa7-4c06-4168-b90b-ee2d6bb40b10/4a8387eb07e17d262bfb9965f6d34462/dotnet-sdk-7.0.203-linux-arm64.tar.gz
DOTNET_FILE=dotnet-sdk-7.0.203-linux-arm64.tar.gz
export DOTNET_ROOT=/root/.dotnet
echo '正在解压...' 
mkdir -p "$DOTNET_ROOT" && tar zxf "$DOTNET_FILE" -C "$DOTNET_ROOT"
echo '解压完成' 
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

echo "export DOTNET_ROOT=/root/.dotnet/
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export DOTNET_GCHeapHardLimit=1C0000000
" >> /root/.bashrc

wget https://gh-proxy.top/https://github.com/MCCTeam/Minecraft-Console-Client/releases/download/20250522-285/MinecraftClient-20250522-285-linux-arm64 -O MinecraftClient-linux-arm64
chmod 777 ./MinecraftClient-linux-arm64
echo '已完成，请输入./MinecraftClient-linux-arm64 以运行' 
