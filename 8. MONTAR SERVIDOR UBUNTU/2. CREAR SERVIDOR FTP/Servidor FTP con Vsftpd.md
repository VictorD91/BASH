Instalar servicio FTP:

```Bash
sudo apt install vsftpd
```

![Pasted image 20240626110620](https://github.com/user-attachments/assets/533e3460-3fc8-4b35-ae69-59bd72ded2db)

Para ver si está corriendo:

```Bash
sudo systemctl status vsftpd
```

![Pasted image 20240626110714](https://github.com/user-attachments/assets/bc649b54-804e-4821-b650-d8ff5ce81f9e)

Si queremos deshabilitar:

```Bash
sudo systemctl stop vsftpd
```

Si queremos habilitar:

```Bash
sudo systemctl status vsftpd
```

Configurar permisos vsftpd:

```Bash
sudo nano /etc/vsftpd.conf
```

![Pasted image 20240626111221](https://github.com/user-attachments/assets/4741732f-aabb-4f4b-bc1f-2a77f33b000d)

Descomentamos ``write_enable=YES`` para tener permisos de escritura:

![Pasted image 20240626111355](https://github.com/user-attachments/assets/4c489f66-3c68-4b0b-ac93-753ed801acf9)

Reiniciamos las configuraciones:

```Bash
sudo systemctl restart vsftpd
```

![Pasted image 20240626111625](https://github.com/user-attachments/assets/bcf8a4c2-5d59-4052-8bbb-9104c3dbf9ae)

Probamos que podemos subir archivos:

```Bash
ftp 10.0.2.50
```

![Pasted image 20240626112054](https://github.com/user-attachments/assets/00080122-ad7c-4f68-a61a-63404e00a880)
