foreach ($i in 1,2,5,6,10) {
	try { 
		docker exec -it C$i /sbin/ip route change default via 10.10.$i.254
		docker exec -it C$i /sbin/ip route show default
		Write-Output "Changing Gateway at C$i is successful"
	}
	catch {
		Write-Output "Changing Gateway at C$i is failed"
	}
}

foreach ($i in 1,2,3,4,5,6) {
	try { 
		docker exec -it R$i /sbin/ip route delete default
		Write-Output "Removing Gateway at R$i is successful"
	}
	catch {
		Write-Output "Removing Gateway at R$i is failed"
	}
}

foreach ($i in 1,2,3) {
	try { 
		docker exec -it BR0$i /sbin/ip route delete default
		Write-Output "Removing Gateway at BR0$i is successful"
	}
	catch {
		Write-Output "Removing Gateway at BR0$i is failed"
	}
}