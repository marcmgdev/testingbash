#!/bin/bash
read -p "Ingresar una opcion" opcion
if [ "$opcion" == "A" ]; then             #if siempre dentro de claudator
	echo "Entraste"

fi
case $opcion in
	"A") echo "Ha ingresado a la opcion A";;
	"B") echo "Ha ingresado a la opcion B";;
	[C-Z]) echo "Usted a ingresado una letra en el rango de la c a la z";;
	*) echo "caracter no valido, porfavor solo letras"		#el * se utiliza como salida del case
esac	#para cerrar el case escribimos esac

