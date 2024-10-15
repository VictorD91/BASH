Listamos:

![Pasted image 20240614232811](https://github.com/user-attachments/assets/55da144d-fe36-4361-8cb9-03bb47ab17da)

Vamos a guardar el resultado de un comando en una variable:

```Bash
#!/bin/bash

textos=$(ls | grep *.txt)
ruta=$(pwd)

echo "Estos son los textos de la ruta $ruta: "

sleep 2

echo $textos
```

![Pasted image 20240614231712](https://github.com/user-attachments/assets/f7257116-17d5-4a42-bdbc-f3e605a8ebdb)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240614232833](https://github.com/user-attachments/assets/60aaa839-8a51-4778-9dd9-56a1c48ccc99)

Ejecutamos el script:

```Bash
./script.sh
```

![Pasted image 20240614232911](https://github.com/user-attachments/assets/0077c1a9-55d4-40bd-b56d-723ad19e886e)
