 #!/bin/bash
input_name=""
texto_arx=""
crear_directorio (){
read -p "Como quieres que se llame el nuevo directorio ? : " input_name
mkdir $input_name
}

crear_archivo (){
read -p "Como quieres que se llame el nuevo archivo ? : " input_name
touch $input_name
read -p "Introduce un texto en el archivo para que no este vacio : " texto_arx
echo $texto_arx >> $input_name
}
read -p "Desas crear un directorio(1) o un archivo(2)" opcion

case $opcion in
1)
crear_directorio
;;
2)
crear_archivo
;;
*) echo "Has salido o no has escogido una opcion valida"
esac

