#!bin/bash
#Programa para empaquetar archivos
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorio"
#-cvf sirve para crear un archivo tar
#-c crea un nuevo archivo tar
#-v muestra el progreso de la compresion
#-f especifica el nombre del archivo tar
tar -cvf ShellCourse.tar *.sh
echo -e "\nArchivo empaquetado"


