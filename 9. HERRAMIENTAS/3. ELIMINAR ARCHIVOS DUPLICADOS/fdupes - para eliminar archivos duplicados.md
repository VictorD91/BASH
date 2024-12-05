
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

![[Pasted image 20240701111526.png]]

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

![[Pasted image 20240701111734.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240701111213.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```


