#!/bin/bash

read -p "A continuacion indicame de que numero deseas saber la tabla de multiplicar" base
numeros=(0 1 2 3 4 5 6 7 8 9 10)

for i in ${numeros[*]}
do
echo "$base x ${numeros[i]} es igual a : $(($base*${numeros[i]}))"
done
