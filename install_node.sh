#!/bin/bash
echo "NODEJS INSTALATION SCRIPT"
mkdir -p ~/opt/packages && cd $_
wget https://nodejs.org/dist/v6.5.0/node-v6.5.0-linux-x64.tar.xz
tar xf node-v6.5.0-linux-x64.tar.xz
ln -s ~/opt/packages/node-v6.5.0-linux-x64/ ~/opt/node


# include locally installed packages in PATH
echo "if [ -d \"$HOME/opt\" ]; then
    PATH=\"$PATH:$HOME/opt/node/bin\"
fi" >> ~/.profile
source ~/.profile
which node
node --version
npm --version

