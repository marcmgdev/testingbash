#!/bin/bash
echo "Te digo si es par o impar"
read -p "Introduce el numero: " NUM
if [ $(($NUM%2)) -eq 0 ]; then
	echo "el numero introducido es par"
else
	echo "el numero introducido es impar"
fi
