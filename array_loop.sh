#!/bin/bash

numeros=(1 2 3 4 5 6 7 8 9)              #array de numeros con parentesis y sin espacion al inicio y final
nombres=("marc miro" "nil miro" xavi)		#entre parentesis y corchetes separados por espacios
rango=({A..Z} {20..30})				#los array siempre con espacio, los rango con corchete
echo "==========Imprimir todos los valores============"
echo ${numeros[0]}			#imprime la primera posicion del array de numeros
echo ${nombres[*]}			#imprime todas las posiciones de array de nombres con el *
echo "${rango[*]}"			#Igual que el de nombres, pero respeta el rango pactado en la declaracion

echo "=======Tamaño de los array======"

echo ${#numeros[*]}			#añadiendo el # delante del nombre del arreglo msotramos el tamaño de este

echo "=====Imprimir un elemento del array====="

echo ${numeros[4]}     #esto printara la posicion 0 1 2 3, la 3 del array demandado en este caso el valor : 5

echo "=====Manipular arrays====="
unset numeros[0]    #con el precepto unset, eliminamos el contenido que se encuentre en la pos afectada del array, al ser una mod, sin $ y sin { }
echo "Array de numeros actualizado,se a quitado un valor" ${numeros[*]}
numeros[0]=33		#al ser una modificacion, no añadimos ni $ ni {}
echo "Array de numeros actualizado, se a añadido un valor"
echo "${numeros[*]}"

echo "=====Iterar en un Array====="

for num in ${numeros[*]}
do
	echo "Numero : $num"
done

echo "================================="

for ((i=0; i<${#numeros[*]}; i++))			#si utilizo esta opcion para el for, la referencia dentro de la condicion para el array tiene que ir con el #
do
	echo "${numeros[i]}"
done

