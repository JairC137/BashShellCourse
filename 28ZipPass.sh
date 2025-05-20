#!bin/bash
#Programa para empaquetar archivos con clave zip
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorioy asignar clave de seguridad"
zip -e ShellCourse.zip *.sh
echo -e "\nArchivo empaquetado con clave de seguridad"

