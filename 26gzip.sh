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

gzip ShellCourse.tar

#que es el ratio? el ratio es la cantidad de compresion que se aplica al archivo
#-1 es el ratio mas bajo y -9 es el ratio mas alto
echo -e "\nArchivo empaquetado con ratio 9"
gzip -9 ShellCourse.tar



