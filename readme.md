# Edgeware Node

Builds a container for substrate's edgeware node. Uses the build binaries from https://github.com/hicommonwealth/edgeware-node

## Build

1. Update docker file with latest binary version.
1. Use binary version to build and tag `docker build -t "mailchain/edgeware-node:v3.0.8" -t "mailchain/edgeware-node:latest" .`.
1. Push container to docker hub `docker push "mailchain/edgeware-node:v3.0.8" && docker push "mailchain/edgeware-node:latest"`
