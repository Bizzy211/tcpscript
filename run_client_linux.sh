#!/bin/bash

# Build the container image
docker build -t tcp_client ./client

# Run the created image.
docker run --network="tcp_server" --rm -it  --name "tcp-client-$(date +%s)" tcp_client