
Si queremos buscar un archivo o directorio con un ``script``:

```Bash
#!/bin/bash

read -p "Inserte el archivo que quieres buscar: " archivo

resultado=$(find / -name $archivo 2>/dev/null)

resultado_final=$(echo $resultado | sed "s/$archivo/ /")

echo "El archivo que buscas se encuentra en: $resultado_final"
```

![[Pasted image 20240615175015.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240615175100.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240615175205.png]]

