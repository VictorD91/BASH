Creamos un ``script`` que busque archivos repetidos y los elimine:

Código explicado:

```Bash
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
```

![Pasted image 20240701111526](https://github.com/user-attachments/assets/a6b5440b-3d92-4c66-9604-5ef939513df9)

Código limpio:

```Bash
#!/bin/bash

if ! command -v fdupes &> /dev/null
then
        echo "La herramienta fdupes no está instalada. Se instalará automáticamente"
        sudo apt install fdupes -y
fi

archivos=$(fdupes -r . | sed 's/^..//')

echo "$archivos" | while read -r line; do
        rm $line
done
```

![Pasted image 20240701111734](https://github.com/user-attachments/assets/e4695042-627d-4ef9-944f-90caa819854f)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20241205152906](https://github.com/user-attachments/assets/32a2ec1a-5217-4a86-9fbf-75bb6eb5f5bb)

Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20241205154531](https://github.com/user-attachments/assets/0f4790f3-9ba0-40f1-a6f0-ae17e34651e4)
