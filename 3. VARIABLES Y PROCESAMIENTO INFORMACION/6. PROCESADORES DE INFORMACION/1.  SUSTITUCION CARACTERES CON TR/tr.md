Si queremos ``sustituir caracteres``por otros utilizaremos el comando **tr** (siempre tiene que ser el número ``equivalente un caracter por un caracter``):

```Bash
echo '1 2 0 4 5' | tr '0' '3'
```

![Pasted image 20240615093623](https://github.com/user-attachments/assets/b0f7c161-1483-4d7c-9c71-a9c80b505bc4)

También se puede hacer sobre archivos (en este ejemplo sustituimos ``saltos de líneas`` por un ``espacio``):

```Bash
cat texto.txt | tr '\n' ' '
```

![Pasted image 20240615093826](https://github.com/user-attachments/assets/660f0817-05a1-4611-9e11-ccd455eebd0f)
