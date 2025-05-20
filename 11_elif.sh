#!bin/bash
#Programa para ver la estructura de elif
#Merdano Olmos Jose Jair

edad=0

echo "ejemplo elif"

read -p "indica tu edad" edad
if [ $edad -le 18 ]; then 
    echo "Eso es Carcel"
elif [ $edad -ge 19 ] && [ $edad -le 60 ]; then
    echo "Detonable"
else
    echo "Ni lo pienses"
fi

