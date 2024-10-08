Vamos hacer dos archivos con diferentes nombres:

![Pasted image 20240613190536](https://github.com/user-attachments/assets/97bb8c79-c925-4f3c-bdba-89f3bd050c32)

Buscar palabra en un archivo:

```Bash
grep link texto.txt
```

![Pasted image 20240613191456](https://github.com/user-attachments/assets/a37009b1-24b3-4cc1-b6d1-3f66e7f86b46)

Buscar varias palabras en un archivo:

```Bash
grep -E 'link|ganon' texto.txt
```

![Pasted image 20240613191536](https://github.com/user-attachments/assets/89307c45-be47-4484-b375-f1257ea538a4)

Hacemos un **grep** para que nos encuentre un nombre en nuestro directorio actual:

```Bash
grep link *
```

![Pasted image 20240613190632](https://github.com/user-attachments/assets/52774d1d-e7bb-4bc5-9f80-0654068a3c5f)

Si hubiera una carpeta saldría un mensaje molesto:



Para arreglarlo sería con el siguiente parámetro:

```Bash
grep -s link *
```



Si queremos que de los archivos que tenemos nos muestre todas las líneas menos una que escojamos:

```Bash
grep -v link texto.txt
```



Si quisiéramos eliminar varias:

```Bash
grep -v -E 'link|urbosa|daruk' /etc/passwd
```






