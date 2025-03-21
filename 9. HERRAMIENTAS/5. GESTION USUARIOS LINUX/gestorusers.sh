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
