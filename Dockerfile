FROM ubuntu:18.04

WORKDIR /root

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    apt-transport-https ca-certificates jq nano wget curl \
    && wget https://github.com/nymtech/nym/releases/download/v0.8.1/nym-mixnode_linux_x86_64 \
    && mv nym-mixnode_linux_x86_64 /usr/bin/nym-mixnode \
    && chmod u+x /usr/bin/nym-mixnode \
    && apt-get clean \
    && apt-get autoclean

EXPOSE 1789

CMD /root/nym-mixnode run --id 1
