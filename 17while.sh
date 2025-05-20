#!bin/bash
#Programa para validar el uso de while
#Merdano Olmos Jose Jair
numero=1
numeros=(1 2 3 4 5 6 7 8 9)

while [ $numero -ne 13 ]
do
    echo "El valor de numero es: $numero"
    # el $ sirve para obtener el valor de la variable
    # el $(( )) sirve para hacer operaciones aritmeticas
    numero=$((numero + 1))
done


