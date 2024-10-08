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

![Pasted image 20240613192010](https://github.com/user-attachments/assets/26e03589-14e7-436d-868f-5213518b7e1a)

Le damos ``permisos de ejecución``:

```Bash
chmod +x script.sh
```

![Pasted image 20240613192119](https://github.com/user-attachments/assets/95fa21bc-3312-43ca-b31e-54a4eb66178d)

Para ejecutar ``script``:

```Bash
./script.sh
```

![Pasted image 20240613192318](https://github.com/user-attachments/assets/d61a8d3b-1f33-4b66-bf4b-8b503742f479)
