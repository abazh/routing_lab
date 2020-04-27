# IP Routing Lab

This is IP Routing lab consist 3 ASes where each AS has 3 routers and 2 clients using FRR docker image. Please refer to the topology when you are going to configure each routers.
![Image of Topology](Topology_Adjar2020.jpg)

## Prerequisite

To build this IP routing lab, you need to install [Docker Desktop for Mac or Windows](https://www.docker.com/products/docker-desktop)

## Clone Repo & Run docker-compose

- Prepare a directory where you will clone this repo and do git clone https://github.com/abazh/routing_lab.git
- Go to directory of the cloned repo
- Run docker-compose -up -d
- Run the script route_clean.sh or route_clean.ps1 (windows powershell)

## Configure Routers

There 3 IGP routers for each ASN 100, 200, and 300:
To configure each router, you just need to run command in your powershell terminal console or iterm terminal console:
 docker exec -it R1 vtysh

To test routing between client you can do traceroute from each client
 docker exec -it C1 traceroute -n C10
 
