# ! /bin/bash
# Como capturar informacion con echo read y reply
# Medrano Olmos Jose Jair

option=()
backupname=""
echo "utilidades postgres"
echo -n "ingresar una opcion"
read
option=$REPLY
echo "ingresar el nombre del archivo de back up"
read
backupname=$REPLY
echo "Opcion: $option, backupname: $backupname"
