Creamos una ``página web``:

![[Pasted image 20240629094724.png]]

![[Pasted image 20240629094218.png]]

Creamos un ``directorio`` llamado ``test`` y montamos otra página:

![[Pasted image 20240629094005.png]]

![[Pasted image 20240629094026.png]]

![[Pasted image 20240629094317.png]]

Montamos un ``servidor`` para nuestra ``página web``:

```
python3 -m http.server 80
```

![[Pasted image 20240629094112.png]]

![[Pasted image 20240629094805.png]]

Creamos el ``script`` para hacer **fuzzing web**:

Código explicado:

```Bash
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
```

![[Pasted image 20240629113132.png]]

Código limpio:

```Bash
#/bin/bash

if [ $# -ne 2 ]; then
        echo "Utiliza solo los parámetros <diccionario> <URL>"
        exit 1
fi

diccionario="$1"
url="$2"

total_lines=$(wc -l $diccionario | awk '{print $1}')
current_line=0

while read -r linea; do

        current_line=$((current_line +1))
        echo -n "Palabras utilizadas: $current_line/$total_lines\r"

        respuesta=$(curl -s -o /dev/null -w "%{http_code}" "$url$linea/")

        if [ $respuesta -eq 200 ]; then
                echo "URL encontrada: $url/$linea/"
        fi

done < "$diccionario"
```

![[Pasted image 20240629112920.png]]

Le damos permisos:

```Bash
chmod +x fuzzing.sh
```

![[Pasted image 20240629103101.png]]

Ejecutamos el ``script``:

```Bash
./fuzzing.sh /usr/share/wordlists/dirbuster/dictory-list-lowercase-2.3-medium.txt http://localhost/
```

![[Pasted image 20240629112757.png]]

![[Pasted image 20240629113203.png]]
