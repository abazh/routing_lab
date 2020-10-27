#!/bin/bash
for i in 1 2 5 6 9 10; # Change default gateway to each router
do 
  if docker exec -it C$i /sbin/ip route change default via 10.10.$i.254;
  then echo "Changing Gateway at C$i is successful"
  else echo "Changing Gateway at C$i is failed"
  fi
done

for i in 1 2 3 4 5 6; # Delete default gateway on each router
do 
  if docker exec -it R$i /sbin/ip route delete default;
  then echo "Removing Gateway at R$i is successful"
  else echo "Removing Gateway at R$i is failed"
  fi 
done

for i in 1 2 3; # Delete default gateway on each border router
do 
  if docker exec -it BR0$i /sbin/ip route delete default;
  then echo "Removing Gateway at BR0$i is successful"
  else echo "Removing Gateway at BR0$i is failed"
  fi 
done
