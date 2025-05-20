#!bin/bash
#Programa para validar un break y continue
#Merdano Olmos Jose Jair

echo "Ejemplo de un loop anidado"
for file in $(ls)
do
    echo "El archivo es: $file"
    for i in {1..4}
    do
        if [ $file = "10_" ]
        then
            echo "El archivo levanta el break"
            break;

        elif [ $file == 4* ]
        then
        #el continue sirve para saltar a la siguiente iteracion
            continue;
        fi
        echo "El valor de i es: $i"
    done
done
