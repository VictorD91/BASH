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

![Pasted image 20241022171202](https://github.com/user-attachments/assets/12c85781-de2d-40a9-8efa-8e210d3ecf68)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240615175100](https://github.com/user-attachments/assets/9fae3a1f-6738-4aed-b7fe-968549f90d2c)

Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20240616092016](https://github.com/user-attachments/assets/3e4bf577-f3ae-413a-9c38-71641c01dcb2)
