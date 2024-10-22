
Otra forma de ``sentencia condicional`` con **case**:

```Bash
#!/bin/bash

echo "Qué quieres crear: "
echo    "1)Archivo"
echo    "2)Carpeta"

read -p "Opcion: " decision

case "$decision" in

        "1")
           touch archivo.txt
           ;;
        "2")
           mkdir carpeta/
           ;;
        *)
           echo "No has seleccionado la respuesta correcta"
           ;;
esac
```

![[Pasted image 20240617122043.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240615175100.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240617122307.png]]

