
 Para saber el tamaño de estos archivos lo hacemos con el comando **du**:

![[Pasted image 20240615171450.png]]

```Bash
du -h script.sh texto.txt 
```

![[Pasted image 20240615171510.png]]

Con un script:

```Bash
#!/bin/bash

espacio=$(du -h script.sh texto.txt)

echo "Los tamaños de estos archivos son: "

echo "$espacio"
```

Le damos permisos:

```Bash
chmod +x script.sh
```

![[Pasted image 20240615172216.png]]

Ejecutamos el script:

```Bash
./script.sh
```

![[Pasted image 20240615172020.png]]

