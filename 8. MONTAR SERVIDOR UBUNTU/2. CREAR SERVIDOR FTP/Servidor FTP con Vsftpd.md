
Instalar servicio FTP:

```Bash
sudo apt install vsftpd
```

![[Pasted image 20240626110620.png]]

Para ver si está corriendo:

```Bash
sudo systemctl status vsftpd
```

![[Pasted image 20240626110714.png]]

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

![[Pasted image 20240626111221.png]]

Descomentamos ``write_enable=YES`` para tener permisos de escritura:

![[Pasted image 20240626111355.png]]

Reiniciamos las configuraciones:

```Bash
sudo systemctl restart vsftpd
```

![[Pasted image 20240626111625.png]]

Probamos que podemos subir archivos:

```Bash
ftp 10.0.2.50
```

![[Pasted image 20240626112054.png]]

