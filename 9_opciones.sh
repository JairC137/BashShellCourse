# !/bin/bash
#opcoines sin parametros
# Medrano Olmos Jose Jair

echo "programa de opciones"
echo "opcion 1: $1"
echo "opcion 2: $2"
echo "opciones enviadas $*"

echo -e "\n"

echo "Recuperando valores"

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utilizada";;
*) echo "$! no es una opcion" ;;
esac
shift
done
