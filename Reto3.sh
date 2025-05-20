#!bin/bash
#Reto 3 estructura elif
#Merdano Olmos Jose Jair

numero=0

echo "Reto elif numero 3"
echo -e "\n"
echo "ADIVINADOR DE NUMERO"
echo -e "\n"
echo "Ingresar un valor del 1 al 5"
read numero

if [ $numero -eq 1 ]; then 
    echo "El numero en el que pensaste es 1, Numero pensado: $numero"
elif [ $numero -eq 2 ]; then
    echo "El numero en el que pensaste es el 2, Numero pensado: $numero"
elif [ $numero -eq 3 ]; then
    echo "el numero en el que pensaste es el 3, Numero pensado: $numero"
elif [ $numero -eq 4 ]; then 
    echo "el numeroque pensaste es el 4, Numero pensado: $numero"
elif [ $numero -eq 5 ]; then 
    echo "el numero en el que pensaste es el 5, Numero pensado: $numero"
else
    echo "El numero en el que pensaste se sale del rango de calculo"
fi

