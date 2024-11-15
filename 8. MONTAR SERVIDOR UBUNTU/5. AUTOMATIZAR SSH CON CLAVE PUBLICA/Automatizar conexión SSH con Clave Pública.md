Generamos claves ``SSH``:

```Bash
ssh-keygen
```

![Pasted image 20240628102410](https://github.com/user-attachments/assets/b9bde4cf-ae9d-4795-ae66-3265188b348c)

Copiamos nuestra clave al ``servidor SSH``:

```Bash
ssh-copy-id victor-server@10.0.2.50
```

![Pasted image 20240628102533](https://github.com/user-attachments/assets/0025c9a4-91b4-4557-acf0-89a417ec5119)

Lo comprobamos:

```Bash
ssh victor-server@10.0.2.50
```

![Pasted image 20240628102743](https://github.com/user-attachments/assets/7f965629-e317-436e-8407-6e70ee27e985)
