#!/bin/bash
mkdir nym && cd nym;\
wget https://github.com/nymtech/nym/releases/download/v0.8.1/nym-mixnode_linux_x86_64 \
&& chmod u+x nym-mixnode_linux_x86_64 \
&& ~/nym/nym-mixnode_linux_x86_64 init --id 1 --host $(curl 2ip.ru) --location $(curl -s ipinfo.io/$(curl -s 2ip.ru) | jq -r '.city') \
&& mv ~/.nym ~/nym/nym
