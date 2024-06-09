#!/bin/bash
read -p "introduce un numero" NUM   #aqui pido al usr valor y seteo la variable
RESTO=$(($NUM%2))		    #aqui seteo variable RESTO y realizo operacion matematica siempre dentro de parentesis
if [ $RESTO -eq 0 ]; then	    #si se cumple el if, cierro con ; + then
	echo "el numero es par"
else
	echo "el numero es impar"
fi					#terminar
