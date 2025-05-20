#!bin/bash
#Programa para validar un loop anidado
#Merdano Olmos Jose Jair

echo "Ejemplo de un loop anidado"
for file in $(ls)
do
    echo "El archivo es: $file"
    for i in {1..5}
    do
        echo "El valor de i es: $i"
    done
done

