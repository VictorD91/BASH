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
