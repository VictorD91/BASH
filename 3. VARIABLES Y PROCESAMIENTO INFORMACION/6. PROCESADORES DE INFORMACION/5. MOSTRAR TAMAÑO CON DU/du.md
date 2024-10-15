Para saber el tamaño de estos archivos lo hacemos con el comando **du**:

![Pasted image 20240615171450](https://github.com/user-attachments/assets/4c769814-47b5-4504-a57e-7abaa21ff666)

```Bash
du -h script.sh texto.txt 
```

![Pasted image 20240615171510](https://github.com/user-attachments/assets/289339ea-e7f3-4179-b048-c9175e608ef8)

Con un script:

```Bash
#!/bin/bash

espacio=$(du -h script.sh texto.txt)

echo "Los tamaños de estos archivos son: "

echo "$espacio"
```

![Pasted image 20241015211720](https://github.com/user-attachments/assets/794f14a0-eaf2-41f8-bd97-3c330d7445c7)

Le damos permisos:

```Bash
chmod +x script.sh
```

![Pasted image 20240615172216](https://github.com/user-attachments/assets/7f7af921-7300-4969-aa4a-87d21d244d77)

Ejecutamos el script:

```Bash
./script.sh
```

![Pasted image 20240615172020](https://github.com/user-attachments/assets/34d51964-bb9c-4102-8ce8-ff7cf7b4a3cf)
