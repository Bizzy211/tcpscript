docker build -t tcp_client ./client
docker run --network="tcp_server" --rm -it  --name tcp_client tcp_client