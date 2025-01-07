
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

![[Pasted image 20240701174759.png]]

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

![[Pasted image 20240701173932.png]]

Le damos permisos:

```Bash
chmod +x cracking.sh
```

![[Pasted image 20240701173109.png]]

Ejecutamos el ``script``:

```Bash
./cracking.sh archivo.zip /usr/share/wordlists/rockyou.txt
```

![[Pasted image 20240701174401.png]]



