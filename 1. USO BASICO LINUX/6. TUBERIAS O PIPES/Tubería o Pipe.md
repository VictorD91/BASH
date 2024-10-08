
Sirve para aplicar otro comando sobre la salida de uno anterior.

Por ejemplo hacemos un **cat** a este archivo:

```Bash
cat texto.txt
```

![[Pasted image 20240613180718.png]]

Ahora ejecutaremos sobre el **cat** el comando **wc -l** que nos contará las líneas que hay sobre el resultado de **cat**. Para ello hay que poner una tubería **|** en medio:

```Bash
cat texto.txt | wc -l
```

![[Pasted image 20240613180927.png]]

Podemos poner varias tuberías que van ejecutándose sobre los resultados anteriores. Con el comando **sort** los ordenará alfabéticamente y el comando **uniq** eliminará los que estén repetidos:

```Bash
cat texto.txt | sort | uniq
```

![[Pasted image 20240613180858.png]]


