#!bin/bash
#Programa para escribir en un archivo
#Merdano Olmos Jose Jair

echo "escribiendo en un archivo"
echo "Valores escritos con echo" > $1

#adicion multilinea
## el << EOM indica el inicio de un bloque de texto
## el EOM indica el final del bloque de texto
cat << EOM >> $1
$2
EOM
