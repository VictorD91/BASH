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

![Pasted image 20240613190826](https://github.com/user-attachments/assets/883c6ced-9708-41f8-af87-1bc0cba9a199)

Para arreglarlo sería con el siguiente parámetro:

```Bash
grep -s link *
```

![Pasted image 20240613190906](https://github.com/user-attachments/assets/b208f7aa-3fb3-464a-9734-c1802f3c92b7)

Si queremos que de los archivos que tenemos nos muestre todas las líneas menos una que escojamos:

```Bash
grep -v link texto.txt
```

![Pasted image 20240613191129](https://github.com/user-attachments/assets/2f675533-23ca-4b64-bdc1-658485989b70)

Si quisiéramos eliminar varias:

```Bash
grep -v -E 'link|urbosa|daruk' /etc/passwd
```

![Pasted image 20240613191341](https://github.com/user-attachments/assets/9ced8802-cbff-4656-93d9-bf89e57ce2eb)
