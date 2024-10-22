
``Script con condicionales``:

**if** = condicional

**elif** = otra condicional

**else** = si no se cumplen las condicionales

```Bash
#!/bin/bash

echo \

read -p "Elige un nombre Víctor o Mirian: " nombre

echo \

if [ "$nombre" = "Víctor" ]; then
        echo "El nombre que has elegido es Víctor"
elif [ "$nombre" = "Mirian" ]; then
        echo "El nombre que has elegido es Mirian"
else
        echo "No has escogido ningún nombre"
fi
```

![[Pasted image 20241022171202.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240615175100.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240616092016.png]]

