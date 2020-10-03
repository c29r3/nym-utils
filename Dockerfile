FROM ubuntu:18.04
MAINTAINER c29r3

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    apt-transport-https ca-certificates jq nano wget curl htop whois build-essential \

WORKDIR /root

RUN wget https://github.com/nymtech/nym/releases/download/v0.8.1/nym-mixnode_linux_x86_64 \
    && mv nym-mixnode_linux_x86_64 nym-mixnode \
    && chmod u+x nym-mixnode

CMD /root/nym-mixnode run --id 1
