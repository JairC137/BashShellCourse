#!bin/bash
#Programa para ver la estructura de if else
#Merdano Olmos Jose Jair


notaClase=0
edad=0

echo "ejemplo if else"
read -n1 -p "indica tu nota" notaClase
echo -e "\n"

if (($notaClase >= 7)); then
    echo "Pasaste mijo"
else 
    echo "Llama+ tarde"
fi

read -p "indica tu edad" edad
if [ $edad -le 18 ]; then 
    echo "No puedes votar"
else
    echo "Puedes votar"
fi

