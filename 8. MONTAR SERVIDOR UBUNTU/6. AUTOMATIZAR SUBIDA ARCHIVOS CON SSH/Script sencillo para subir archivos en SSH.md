
Hacemos el ``script``que comprimirá todos los archivos de nuestro directorio y los enviará al servidor a través de ``SSH``:

```Bash
#!/bin/bash

zip_file="arhivos.zip"

ssh_user="victor-server"
ssh_server="10.0.2.50"

remote_path="/home/victor-server/"

zip -r $zip_file .

scp $zip_file "$ssh_user@$ssh_server:$remote_path"

if [ $? -eq 0 ]; then
        echo "Archivo enviado correctamente"
else
        echo "ERROR: El archivo no se envió"
fi

rm $zip_file
```

![[Pasted image 20240628112354.png]]

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240628112910.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240628111714.png]]

Lo comprobamos:

![[Pasted image 20240628111641.png]]



