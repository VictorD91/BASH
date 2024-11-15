Instalamos ``SSH``:

```Bash
sudo apt install openssh-server
```

![Pasted image 20240628101452](https://github.com/user-attachments/assets/38040898-4e6a-4899-8791-7b0215e48c69)

Comprobamos que está activo:

```Bash
systemctl status ssh
```

![Pasted image 20240628101313](https://github.com/user-attachments/assets/9ce65f15-7b46-4e6e-b3d3-b4924f81e345)

Nos conectamos:

```Bash
ssh victor-server@10.0.2.50
```

![Pasted image 20240628101650](https://github.com/user-attachments/assets/5b2642e7-2242-4cde-bbe9-9b51f30d0f13)
