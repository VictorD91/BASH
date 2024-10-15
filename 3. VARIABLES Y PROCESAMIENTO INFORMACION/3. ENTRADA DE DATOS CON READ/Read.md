Hacemos un ``script`` con el comando **read** para que el usuario meta ``datos`` en unas ``variables``:

```Bash
#!/bin/bash

read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad

echo "Tu nombre es $nombre y tu edad es $edad"
```

![Pasted image 20240615085442](https://github.com/user-attachments/assets/e88d40a8-9026-431f-9ea1-c8c8dd8a43fb)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240615085531](https://github.com/user-attachments/assets/999e19d8-4686-463f-af2c-39bfd26804ce)

Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20240615085019](https://github.com/user-attachments/assets/74668c2b-649a-4360-97a8-bdb23417f65d)
