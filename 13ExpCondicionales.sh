#!bin/bash
#Programa para validar si existe una ruta 
#Merdano Olmos Jose Jair

archivo=""

echo "Verificador de rutas de directorio"
read -p "ingrese la ruta del archivo a localizar: " archivo

if [ -d $archivo ]; then
    echo "directorio existe"
else 
    echo "directorio no existe"
fi


