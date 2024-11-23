Con el comando **echo -e** hacemos que ``interprete todo`` lo que encuentre:

```Bash
echo -e 'hola\nmundo'
```

![Pasted image 20240629092241](https://github.com/user-attachments/assets/f78d2222-564c-4f37-a4d2-9db1f240cba2)

```Bash
echo -e 'hola\tmundo'
```

![Pasted image 20240629092404](https://github.com/user-attachments/assets/a2821f16-012e-4978-8b19-fb291470eeb7)

Con el comando **echo -n** hacemos que ``suprima la última línea`` y nos la ponga encima:

```Bash
echo -n "Esta es la primera línea"
echo " y esta es la segunda línea"
```

![Pasted image 20240629092936](https://github.com/user-attachments/assets/1d8d7f85-8804-4d8e-b2e8-7449ae5516ec)

Ejecutamos el ``script``:

```Bash
./script.sh
```

![Pasted image 20240629093015](https://github.com/user-attachments/assets/630bbd5c-5e1e-4b1b-b656-84d388f19e6a)

Se pueden combinar las dos con el comando **echo -ne**.
