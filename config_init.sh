#!/bin/bash

mkdir $HOME/nym; cd $HOME/nym;\
wget https://github.com/nymtech/nym/releases/download/v0.9.1/nym-mixnode_linux_x86_64 \
&& chmod u+x nym-mixnode_linux_x86_64 \
&& $HOME/nym/nym-mixnode_linux_x86_64 init --id 1 --host $(curl 2ip.ru) --location $(curl -s ipinfo.io/$(curl -s 2ip.ru) | jq -r '.city') \
&& mv $HOME/.nym $HOME/nym/
