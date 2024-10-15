
Hacemos un ``script`` con el comando **read** para que el usuario meta ``datos`` en unas ``variables``:

```Bash
#!/bin/bash

read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad

echo "Tu nombre es $nombre y tu edad es $edad"
```

![[Pasted image 20240615085442.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240615085531.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240615085019.png]]


