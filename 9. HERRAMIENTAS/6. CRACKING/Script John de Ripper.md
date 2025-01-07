Creamos un ``script`` para crackear contraseñas con **jonhderipper**:

Código explicado:

```Bash
#/bin/bash

#Creamos una sentencia condicional para que sea obligatorio poner dos parametros
if [ $# -ne 2 ]; then
        echo "Uso: <archivo> <wordlist>"
        exit 1
fi

#Creamos dos variables que van a ser los parametros que les vamos a pasar
archivo="$1" 
wordlist="$2"

#Creamos una sentencia condicional que mire la extensión del archivo para sacar el hash
case "$archivo" in
        *.kdbx) 
                keepass2john $archivo > hash
                ;;
        *.zip)  
                zip2john $archivo > hash
                ;;
        *.rar)  
                rar2john $archivo > hash
                ;;
        *.pdf)  
                pdf2john $archivo > hash
                ;;
        *)
                echo "Formato no compatible"
                exit 1
                ;;
esac

#Crackeamos la contraseña con john o miramos si la habíamos crackeada anteriormente
john --wordlist="$wordlist" hash
john --show hash
rm hash
```

![Pasted image 20240701174759](https://github.com/user-attachments/assets/f41ea5e8-4aa2-40c2-ae5b-f899fd35f331)

Código limpio:

```Bash
#/bin/bash

if [ $# -ne 2 ]; then
        echo "Uso: <archivo> <wordlist>"
        exit 1
fi

archivo="$1" 
wordlist="$2"

case "$archivo" in
        *.kdbx) 
                keepass2john $archivo > hash
                ;;
        *.zip)  
                zip2john $archivo > hash
                ;;
        *.rar)  
                rar2john $archivo > hash
                ;;
        *.pdf)  
                pdf2john $archivo > hash
                ;;
        *)
                echo "Formato no compatible"
                exit 1
                ;;
esac

john --wordlist="$wordlist" hash

john --show hash

rm hash
```

![Pasted image 20240701173932](https://github.com/user-attachments/assets/31aff58c-34cd-4226-a552-bc54d15629ea)

Le damos permisos:

```Bash
chmod +x cracking.sh
```

![Pasted image 20240701173109](https://github.com/user-attachments/assets/499a0f14-1bad-4527-81b1-05439631e770)

Ejecutamos el ``script``:

```Bash
./cracking.sh archivo.zip /usr/share/wordlists/rockyou.txt
```

![Pasted image 20240701174401](https://github.com/user-attachments/assets/e589145f-4612-412c-8a0a-399320512b9f)
