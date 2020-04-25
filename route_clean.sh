#!/bin/bash
for i in 0 1 2 3 4; # Change default gateway to each router
do 
  docker exec -it C$i /sbin/ip route change default via 10.10.$i.254; 
done

for i in 1 2 3 4; # Delete default gateway on each router
do 
  docker exec -it R$i /sbin/ip route delete default; 
done

for i in 1 2 3; # Delete default gateway on each border router
do 
  docker exec -it BR0$i /sbin/ip route delete default; 
done
