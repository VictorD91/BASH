Creamos un ``script`` para ``crear`` o ``borrar`` a un ``usuario``:

Código explicado:

```Bash
#/bin/bash

#Creamos dos funciones para crear o borrar el usuario que le pase un usuario
create_user() {
        read -p "Ingrese el nombre del usuario que desea crear: " username
        sudo adduser $username
        echo "Usuario $username creado"
}
delete_user() {
        read -p "Ingrese el nombre del usuario que desea borrar: " username
        sudo deluser --remove-home $username
        echo "Usuario $username borrado"
}

#Creamos un bucle que en el caso de que un usuario le pase un número llame a una función elegida
while true; do
        echo "1) Crear usuario"
        echo "2) Borrar usuario"
        echo "3) Salir"  
        read -p "Elija una de las 3 opciones: " election

        case $election in 
                1) 
                        create_user
                        ;;
                2) 
                        delete_user
                        ;;
                3)
                        exit 1
                        ;;
                *)
                        echo "Opción no válida"
                        ;;
        esac
done

```

![Pasted image 20240701165242](https://github.com/user-attachments/assets/7f8f59c9-e761-46c2-b33d-9ea900b017ac)

Código limpio:

```Bash
#/bin/bash

create_user() {
        read -p "Ingrese el nombre del usuario que desea crear: " username
        sudo adduser $username
        echo "Usuario $username creado"
}

delete_user() {
        read -p "Ingrese el nombre del usuario que desea borrar: " username
        sudo deluser --remove-home $username
        echo "Usuario $username borrado"
}

while true; do
        echo "1) Crear usuario"
        echo "2) Borrar usuario"
        echo "3) Salir"
        read -p "Elija una de las 3 opciones: " election

        case $election in
                1) 
                        create_user
                        ;;
                2) 
                        delete_user
                        ;;
                3)
                        exit 1
                        ;;
                *)
                        echo "Opción no válida"
                        ;;
        esac
done
```

![Pasted image 20240701165403](https://github.com/user-attachments/assets/6c31abbc-a480-4f90-b73e-a9cd51bccae9)

Le damos permisos:

```Bash
chmod +x gestorusers.sh
```

![Pasted image 20240701164155](https://github.com/user-attachments/assets/4a910c8b-6ae2-42f3-9cab-044748f733b9)

Ejecutamos el ``script``:

```Bash
./gestorusers.sh
```

![Pasted image 20240701164829](https://github.com/user-attachments/assets/1f77d2bc-d957-4e18-b71e-285167e2c465)
