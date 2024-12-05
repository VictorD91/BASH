Creamos un ``script`` para detectas que ``sistema operativo`` es una ``IP``:

Código explicado:

```Bash
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
```

![Pasted image 20240701161439](https://github.com/user-attachments/assets/5844644e-818a-4304-aeab-92148150618b)

Código limpio:

```Bash
#/bin/bash

read -p "Introduce una IP: " ip

if ping -c 1 $ip > /dev/null; then
        echo "El host se encuentra en la red"
        
        ttl=$(ping -c 1 $ip | grep "ttl=" | awk '{print $6}' | tr -d "ttl=")

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
```

![Pasted image 20240701161527](https://github.com/user-attachments/assets/d3ecede4-ea42-45ed-8427-7e9421306ce4)

Le damos permisos:

```Bash
chmod +x detector.sh
```

![Pasted image 20240701160836](https://github.com/user-attachments/assets/ddd16e63-d2d3-4967-93e6-5bad2f72d1ed)

Ejecutamos el ``script``:

```Bash
./detector.sh
```

![Pasted image 20240701160914](https://github.com/user-attachments/assets/ba004424-8eb2-4022-8e49-bba9f4d8725b)
