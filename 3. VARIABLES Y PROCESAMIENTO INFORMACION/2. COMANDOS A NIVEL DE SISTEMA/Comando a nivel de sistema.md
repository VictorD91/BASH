
Listamos:

![[Pasted image 20240614232811.png]]

Vamos a guardar el resultado de un comando en una variable:

```Bash
#!/bin/bash

textos=$(ls | grep *.txt)
ruta=$(pwd)

echo "Estos son los textos de la ruta $ruta: "

sleep 2

echo $textos
```

![[Pasted image 20240614231712.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240614232833.png]]

Ejecutamos el script:

```Bash
./script.sh
```

![[Pasted image 20240614232911.png]]


