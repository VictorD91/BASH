
Definimos los colores como variables:

```Bash
#!/bin/bash

rojo='\033[0;31m'
verde='\033[0;32m'
amarillo='\033[0;33m'
azul='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
negro='\033[0;30m'
gris_claro='\033[0;37m'
blanco='\033[1;37m'
sin_color='\033[0m'
```

Imprimimos una frase con cada uno de los colores

```Bash
echo -e "${rojo}El sol es de color rojo.${sin_color}"
echo -e "${verde}El mar es de color verde.${sin_color}"
echo -e "${amarillo}La arena es de color amarillo.${sin_color}"
echo -e "${azul}El cielo es de color azul.${sin_color}"
echo -e "${magenta}Las flores son de color magenta.${sin_color}"
echo -e "${cyan}El agua es de color cyan.${sin_color}"
echo -e "${negro}La noche es de color negro.${sin_color}"
echo -e "${gris_claro}La nieve es de color gris claro.${sin_color}"
echo -e "${blanco}Las nubes son de color blanco.${sin_color}"
```

![[Pasted image 20240625114131.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240625113955.png]]

Definimos los colores más luminosos como variables

```Bash
#!/bin/bash

rojo_luminoso='\033[1;31m'
verde_luminoso='\033[1;32m'
amarillo_luminoso='\033[1;33m'
azul_luminoso='\033[1;34m'
magenta_luminoso='\033[1;35m'
cyan_luminoso='\033[1;36m'
blanco_luminoso='\033[1;37m'
sin_color='\033[0m'
```

Imprimimos una frase con cada uno de los colores más luminosos

```Bash
echo -e "${rojo_luminoso}El sol es de color rojo luminoso."
echo -e "${verde_luminoso}El mar es de color verde luminoso."
echo -e "${amarillo_luminoso}La arena es de color amarillo luminoso."
echo -e "${azul_luminoso}El cielo es de color azul luminoso."
echo -e "${magenta_luminoso}Las flores son de color magenta luminoso."
echo -e "${cyan_luminoso}El agua es de color cyan luminoso."
echo -e "${blanco_luminoso}Las nubes son de color blanco luminoso."
```

![[Pasted image 20240625114608.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240625114546.png]]

Resetear el color por defecto

```Bash
sin_color='\033[0m'
```

Imprimimos una frase en el color por defecto

```Bash
echo -e "${sin_color}Esta frase está en el color por defecto."
```

![[Pasted image 20240625114642.png]]

Ejecutamos el ``script``:

```Bash
./script.sh
```

![[Pasted image 20240625114702.png]]