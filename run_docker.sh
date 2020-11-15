docker run -d \
  --restart always \
  --entrypoint /usr/bin/nym-mixnode \
  --volume $HOME/.nym/:/root/.nym \
  --network host \
  --name nym \
  --network host \
  --log-opt max-size=100m \
  --log-opt max-file=3 \
  c29r3/nym-mixnode:latest \
  run --id 1
