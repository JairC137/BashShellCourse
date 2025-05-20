#!bin/bash
#Programa para ver las operaciones de archivos
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Creando directorio"
mkdir -m 755 BackupScript/
echo -e "\nDirectorio Creado"

#Copiando los script a la carpeta BackupScript
#Explicando el uso del *.* sirve para copiar todos los archivos que tengan una extension
cp *.* BackupScript/
ls -la BackupScript/

echo -e "\nMoviendo el directorio al home"
mv BackupScript $HOME
echo -e "\nDirectorio movido al home"
echo -e "\nEliminando el directorio"
#rm -rf $HOME/BackupScript
#echo -e "\nDirectorio eliminado"