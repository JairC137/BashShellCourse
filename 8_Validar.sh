# !/bin/bash
# Como capturar informacion utilizando solo read
# Medrano Olmos Jose Jair

option=()
backupname=""
clave=""
echo "utilidades postgres"
# acepta informacion de un caracter

read -n1 -p "ingresar una opcion" option
echo -e "\n"

read -n10 -p "ingresar el nombre del archivo de back up" backupname
echo -e "\n"

read -s -p "ingresar la clave del archivo" clave
echo -e "\n"

echo "Clave: $clave Nombre: $backupname Opcion: $option"
