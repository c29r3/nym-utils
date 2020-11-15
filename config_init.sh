#!/bin/bash

IP=$(curl 2ip.ru)
mkdir $HOME/nym; cd $HOME/nym;\
wget https://github.com/nymtech/nym/releases/download/v0.9.0/nym-mixnode_linux_x86_64 \
&& chmod u+x nym-mixnode_linux_x86_64 \
&& $HOME/nym/nym-mixnode_linux_x86_64 init --id 1 --host $IP --location $(curl -s ipinfo.io/$IP | jq -r '.city') \
&& mv $HOME/.nym $HOME/nym/
