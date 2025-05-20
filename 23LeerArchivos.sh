#!bin/bash
#Programa para leer archivos 
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023

echo "leyendo de un archivo"
cat $1

echo -e "almacenando valores en una variable"
valorCat=$(cat $1)
echo "El valor de la variable es: $valorCat"

#Utilizar IFS (Internal Field Separator) para separar los valores y evitar que los espacios en blanco al final de se recortan
echo -e "\nLeer archivos linea por linea"

while IFS= read linea
do
    echo "$linea"
done < $1
