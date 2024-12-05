#!/bin/bash

#Comprobamos si está instalado fdupes que es una herramienta que detecta archivos repetidos
if ! command -v fdupes &> /dev/null
then
        echo "La herramienta fdupes no está instalada. Se instalará automáticamente"
        sudo apt install fdupes -y
fi

#Creamos una variable que recoja solo los nombres de los archivos repetidos
archivos=$(fdupes -r . | sed 's/^..//')

#Hacemos un bucle que recorra todos los arhivos repetidos y los elimine
echo "$archivos" | while read -r line; do
        rm $line
done