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

![Pasted image 20240628112354](https://github.com/user-attachments/assets/ca9d92a8-716f-4b4e-b4dd-e39b55fd815a)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240628112910](https://github.com/user-attachments/assets/41a4e16b-8c12-4f9d-a8de-517765f015f2)


Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20240628111714](https://github.com/user-attachments/assets/06cdd6c7-591d-457c-b1f4-b10a5d43cb6e)


Lo comprobamos:

![Pasted image 20240628111641](https://github.com/user-attachments/assets/ec196742-6369-4727-a802-5c6fd510884a)
