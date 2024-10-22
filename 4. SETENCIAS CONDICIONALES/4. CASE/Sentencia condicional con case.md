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

![Pasted image 20240617122043](https://github.com/user-attachments/assets/39ac90f6-40f8-44b0-a293-1b362a1ab292)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240615175100](https://github.com/user-attachments/assets/ab27cdf1-129a-4e14-843c-add8734a76a4)

Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20240617122307](https://github.com/user-attachments/assets/a1fdd042-3c54-487e-8025-b9529fccab96)
