#!/bin/bash
echo "Este script es un juego para adivinar el PID del script"
read -p  "Introduce el PID del script:  " PID
CONT=1;
while [ $PID -ne $$ ]; do
	if [ $PID -lt $$ ]; then
		echo "El numero introducido es mas pequeño que el PID"
	else
		echo "El numero introducio es mayor que el PID"
	fi
	read -p "Te doy otro intento, introduce a continuacion un numero : " PID
	CONT=$(($CONT+1))
done
echo "Lo has logrado! han necesitado un total de $CONT intentos para descubrir el PID $$"


