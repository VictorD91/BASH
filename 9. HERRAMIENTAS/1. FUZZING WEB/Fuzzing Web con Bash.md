Creamos una ``página web``:

![Pasted image 20240629094724](https://github.com/user-attachments/assets/e4f81ac6-b558-442e-8355-5d76b7b1947c)

![Pasted image 20240629094218](https://github.com/user-attachments/assets/539d4375-be1f-467d-b1d5-3d201f5f1ad5)

Creamos un ``directorio`` llamado ``test`` y montamos otra página:
![Pasted image 20240629094005](https://github.com/user-attachments/assets/fa676679-d578-4131-bd1f-abe09d5638eb)

![Pasted image 20240629094026](https://github.com/user-attachments/assets/993fc90c-08dd-49bb-92d6-b3ec043e23b8)

![Pasted image 20240629094317](https://github.com/user-attachments/assets/b90958a6-88ac-4ac4-90c0-5b0ee21381d2)

Montamos un ``servidor`` para nuestra ``página web``:

```
python3 -m http.server 80
```
![Pasted image 20240629094112](https://github.com/user-attachments/assets/8c578180-d330-440a-aacf-a85659a0aaea)

![Pasted image 20240629094805](https://github.com/user-attachments/assets/7ef7b6e2-20e9-420d-80ab-415d9ec697dd)

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
![Pasted image 20240629113132](https://github.com/user-attachments/assets/80bb6a85-1bf8-41eb-9079-2160bdecf1b6)

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
![Pasted image 20240629112920](https://github.com/user-attachments/assets/48e9cc70-16bc-4cd8-8119-7f8d57095302)

Le damos permisos:

```Bash
chmod +x fuzzing.sh
```
![Pasted image 20240629103101](https://github.com/user-attachments/assets/4e39db74-6bb4-41f3-9a3b-e4934f85c776)

Ejecutamos el ``script``:

```Bash
./fuzzing.sh /usr/share/wordlists/dirbuster/dictory-list-lowercase-2.3-medium.txt http://localhost/
```
![Pasted image 20240629112757](https://github.com/user-attachments/assets/e4ab9fad-01f6-47c9-91e3-6aea5f3cb4bf)

![Pasted image 20240629113203](https://github.com/user-attachments/assets/1f5f0ed8-8e4d-47fc-8baf-e598430c0e20)
