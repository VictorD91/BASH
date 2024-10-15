Si queremos buscar un archivo o directorio con un ``script``:

```Bash
#!/bin/bash

read -p "Inserte el archivo que quieres buscar: " archivo

resultado=$(find / -name $archivo 2>/dev/null)

resultado_final=$(echo $resultado | sed "s/$archivo/ /")

echo "El archivo que buscas se encuentra en: $resultado_final"
```

![Pasted image 20240615175015](https://github.com/user-attachments/assets/8b58bee8-5b57-4e85-ac97-0656e53c96be)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240615175100](https://github.com/user-attachments/assets/941b7abf-cb4d-424d-bec6-762739e73f00)

Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20240615175205](https://github.com/user-attachments/assets/17ecda6b-fcf6-49f5-b0ea-9b0344fabcd0)
