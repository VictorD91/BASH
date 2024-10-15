
Si queremos ``sustituir caracteres``por otros utilizaremos el comando **tr** (siempre tiene que ser el número ``equivalente un caracter por un caracter``):

```Bash
echo '1 2 0 4 5' | tr '0' '3'
```

![[Pasted image 20240615093623.png]]

También se puede hacer sobre archivos (en este ejemplo sustituimos ``saltos de líneas`` por un ``espacio``):

```Bash
cat texto.txt | tr '\n' ' '
```

![[Pasted image 20240615093826.png]]