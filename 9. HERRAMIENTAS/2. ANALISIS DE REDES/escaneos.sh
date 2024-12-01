#/bin/bash

#Hacemos un escaneo de IPs y las filtramos para solo quedarnos con la dirección suprimiendo el resto del texto y lo metemos en un archivo ips.txt
arp-scan -I eth0 --localnet | grep -v "Interface" | grep -v "Starting" | grep -v "packets" | grep -v "Ending" | awk '{print $1}' | tr -d ' ' > ips.txt

#Hacemos un bucle que recorra el archivo ips.txt y realice un nmap a cada una y lo guarde en un arhivo 
while read -r ip; do
        echo "\033[0;32mEscaneando con nmap la dirección $ip\033[0m"
        nmap -sV -sC -sS --min-rate 5000 -n -Pn -p- --open $ip -oN "escaneo_$ip.txt"
done < ips.txt

#Borramos el archivo ips.txt que ya no necesitamos
rm ips.txt
