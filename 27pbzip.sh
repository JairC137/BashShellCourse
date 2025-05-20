#!bin/bash
#Programa para empaquetar archivos con el comando pbzip2
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorio"
#-cvf sirve para crear un archivo tar
#-c crea un nuevo archivo tar
#-v muestra el progreso de la compresion
#-f especifica el nombre del archivo tar
tar -cvf ShellCourse.tar *.sh

pbzip2 -f ShellCourse.tar

#que es el ratio? el ratio es la cantidad de compresion que se aplica al archivo
#-1 es el ratio mas bajo y -9 es el ratio mas alto
echo -e "\nArchivo empaquetado con tar y comprimido con pbzip2"


#que hace esta linea? esta linea sirve para descomprimir el archivo tar y luego eliminar el archivo tar
#-d descomprime el archivo
#-f especifica el nombre del archivo tar
#-v muestra el progreso de la compresion
tar cf *.sh -c > ShellCourse.tar.pbzip2
echo -e "\nArchivo empaquetado con tar y comprimido con pbzip2"