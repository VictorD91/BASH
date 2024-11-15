
Instalamos ``SSH``:

```Bash
sudo apt install openssh-server
```

![[Pasted image 20240628101452.png]]

Comprobamos que está activo:

```Bash
systemctl status ssh
```

![[Pasted image 20240628101313.png]]

Nos conectamos:

```Bash
ssh victor-server@10.0.2.50
```

![[Pasted image 20240628101650.png]]