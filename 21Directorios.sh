#!/bin/bash
#Programa que ejemplifica la cracion de archivos y directorios
#Merdano Olmos Jose Jair

echo "archivos y directorios"
#Creacion de un directorio
# Explicacion del codigo
# $1 = primer argumento
# $2 = segundo argumento
# el if [ $1 = "d" ] sirve para validar si el primer argumento es igual a "d"
# el if [ $1 = "a" ] sirve para validar si el primer argumento es igual a "a"
# la ejecucion del script es ./21Directorios.sh d nombre_directorio
if [ $1 = "d" ]; then 
    mkdir -m 755 $2
    echo "Directorio creado"
    ls -l $2
    #eliminar directorio
    rmdir $2
elif [ $1 = "a" ]; then
    #Creacion de un archivo
    touch $2
    echo "Archivo creado"
    ls -la $2
    rm -f $2
    echo "Archivo eliminado"
else
    echo "No se ha creado nada"
fi