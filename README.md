# TCP Server/Client

## Requirements 

Please convert these into 2 separate docker containers. Also would like a run down on how to do this on my own. I was stuck with what to put in the requirements.txt and dockerfile.txt. Also the folder structure for the actual project. Thank you.

## How to run

Execute `run_server` script. Enter will accept default values. Server container will always get `172.100.0.2` IP.
Enter on user prompts will accept default values.

Execute `run_client` scripts to run clients. Clients will be assigned dhcp ip starting with 172.100.0.3


## How to change IP address of the server

1. Stop all containers
2. `docker network rm tcp_server`
3. On the run_server script change subnet value in: `docker network create --subnet 172.100.0.0/16 tcp_server` 
4. Modify `--ip` parameter in the docker run line with the new IP (must be on the same subnet as  the network)
5. Run the script