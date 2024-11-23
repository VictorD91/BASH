#/bin/bash

#Con esta sentencia condicional le decimos que solo puede utilizar dos parámetros
if [ $# -ne 2 ]; then
        echo "Utiliza solo los parámetros <Diccionario> <URL>"
        exit 1
fi

#Creamos las variables que meta el usuario en los parámetros
diccionario="$1"
url="$2"

#Creamos las variables del contador de líneas
total_lines=$(wc -l $diccionario | awk '{print $1}')
current_line=0

#Creamos un bucle que lea cada vuelta del diccionario
while read -r linea; do
#A la variable current_line le vamos sumando 1 cada vuelta y que me lo imprima en una línea fija
        current_line=$((current_line +1))
        echo -n "Palabras utilizadas: $current_line/$total_lines\r"
#Creamos la variable respuesta para que nos indique si la respuesta es exitosa
        respuesta=$(curl -s -o /dev/null -w "%{http_code}" "$url$linea/")
#Creamos esta sentencia condicional de que si la petición es exitosa que la imprima
	if [ $respuesta -eq 200 ]; then
        	echo "URL encontrada: $url/$linea/"
	fi
#Le indicamos al bucle el diccionario que tiene que analizar
done < "$diccionario"
