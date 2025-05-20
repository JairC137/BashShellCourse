# ! /bin/bash
# Como capturar informacion utilizando solo read
# Medrano Olmos Jose Jair

option=()
backupname=""
echo "utilidades postgres"
# cambiamos la -n a -p para asignarle valor a la entrada de texto
read -p "ingresar una opcion" option
read -p "ingresar el nombre del archivo de back up" backupname
echo "Opcion: $option, backupname: $backupname"
