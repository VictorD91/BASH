
Vamos hacer dos archivos con diferentes nombres:

![[Pasted image 20240613190536.png]]

Buscar palabra en un archivo:

```Bash
grep link texto.txt
```

![[Pasted image 20240613191456.png]]

Buscar varias palabras en un archivo:

```Bash
grep -E 'link|ganon' texto.txt
```

![[Pasted image 20240613191536.png]]

Hacemos un **grep** para que nos encuentre un nombre en nuestro directorio actual:

```Bash
grep link *
```

![[Pasted image 20240613190632.png]]

Si hubiera una carpeta saldría un mensaje molesto:

![[Pasted image 20240613190826.png]]

Para arreglarlo sería con el siguiente parámetro:

```Bash
grep -s link *
```

![[Pasted image 20240613190906.png]]

Si queremos que de los archivos que tenemos nos muestre todas las líneas menos una que escojamos:

```Bash
grep -v link texto.txt
```

![[Pasted image 20240613191129.png]]

Si quisiéramos eliminar varias:

```Bash
grep -v -E 'link|urbosa|daruk' /etc/passwd
```

![[Pasted image 20240613191341.png]]




