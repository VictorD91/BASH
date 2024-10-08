Sirve para aplicar otro comando sobre la salida de uno anterior.

Por ejemplo hacemos un **cat** a este archivo:

```Bash
cat texto.txt
```

![Pasted image 20240613180718](https://github.com/user-attachments/assets/13537434-5181-45b4-b247-70dc442eb468)

Ahora ejecutaremos sobre el **cat** el comando **wc -l** que nos contará las líneas que hay sobre el resultado de **cat**. Para ello hay que poner una tubería **|** en medio:

```Bash
cat texto.txt | wc -l
```

![Pasted image 20240613180927](https://github.com/user-attachments/assets/5edd8186-c8a6-4842-a872-a2e9bf5f3dd7)

Podemos poner varias tuberías que van ejecutándose sobre los resultados anteriores. Con el comando **sort** los ordenará alfabéticamente y el comando **uniq** eliminará los que estén repetidos:

```Bash
cat texto.txt | sort | uniq
```

![Pasted image 20240613180858](https://github.com/user-attachments/assets/21a30cdb-5699-478b-898f-7262bc8c09df)
