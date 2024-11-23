
Con el comando **echo -e** hacemos que ``interprete todo`` lo que encuentre:

```Bash
echo -e 'hola\nmundo'
```

![[Pasted image 20240629092241.png]]

```Bash
echo -e 'hola\tmundo'
```

![[Pasted image 20240629092404.png]]

Con el comando **echo -n** hacemos que ``suprima la última línea`` y nos la ponga encima:

```Bash
echo -n "Esta es la primera línea"
echo " y esta es la segunda línea"
```

![[Pasted image 20240629092936.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240629093015.png]]

Se pueden combinar las dos con el comando **echo -ne**.

