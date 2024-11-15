
Generamos claves ``SSH``:

```Bash
ssh-keygen
```

![[Pasted image 20240628102410.png]]

Copiamos nuestra clave al ``servidor SSH``:

```Bash
ssh-copy-id victor-server@10.0.2.50
```

![[Pasted image 20240628102533.png]]

Lo comprobamos:

```Bash
ssh victor-server@10.0.2.50
```

![[Pasted image 20240628102743.png]]
