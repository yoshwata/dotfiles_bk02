#!/bin/bash -eux

sudo yum install -y automake
sudo yum install -y libevent-devel

git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
sudo make install

rm -rf ../tmux/
