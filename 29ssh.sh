#!bin/bash
#Programa para tranferir por red archivos con rsync	
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorio y tranferir por red"
hostname=""
user=""
read -p "Ingrese la direccion ip del servidor: " hostname
read -p "Ingrese el nombre de usuario: " user

rsync -avz *.sh $user@$hostname:/home/$user/ShellCourse/

echo -e "\nArchivos tranferidos por red"



