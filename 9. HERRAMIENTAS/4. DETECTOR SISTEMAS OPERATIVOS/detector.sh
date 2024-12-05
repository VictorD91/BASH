#/bin/bash

#Creamos una variable que le pase el usuario
read -p "Introduce una IP: " ip

#Creamos una sentencia condicional que al hacer un ping si está conectado o no
if ping -c 1 $ip > /dev/null; then
        echo "El host se encuentra en la red"

#Creamos una variable de sistema para obtener el ttl
        ttl=$(ping -c 1 $ip | grep "ttl=" | awk '{print $6}' | tr -d "ttl=")
#Creamos una sentencia condicional para determinar si el ttl es windows o linux
        if [ $ttl -gt 60 ] && [ $ttl -lt 70 ]; then
                echo "El host $ip es un Linux/Unix"
        elif [ $ttl -gt 100 ] && [ $ttl -lt 130 ]; then
                echo "El host $ip es un Windows"
        else
                echo "No se puede determinar el sistema operativo"
        fi
else
        echo "No se encontró ningún host con la IP $ip"
fi
