
Crear ``script``:

```Bash
nano script.sh
```

Primero pondremos el ``shebang`` o ``intérprete`` y después el ``script``:

```Bash
#!/bin/bash

echo 'Primer mensaje'

sleep 2

echo 'Segundo mensaje'
```

![[Pasted image 20240613192010.png]]

Le damos ``permisos de ejecución``:

```Bash
chmod +x script.sh
```

![[Pasted image 20240613192119.png]]

Para ejecutar ``script``:

```Bash
./script.sh
```

![[Pasted image 20240613192318.png]]