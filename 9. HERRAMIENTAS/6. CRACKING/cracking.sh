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
