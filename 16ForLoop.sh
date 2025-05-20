#!bin/bash
#Programa para validar el uso del for loop
#Merdano Olmos Jose Jair

numeros=(1 2 3 4 5 6 7 8 9)


echo "iterar un arreglo"

for i in ${numeros[*]}
do
    echo "El valor de i es: $i"
done

echo "iterar en una cadena"
for nom in "jose" "jair" "medrano" "olmos"
do
    echo "El valor de nom es: $nom"
done

echo "iterar en un archivo"
for file in *
do
    echo "El archivo es: $file"
done

echo "iterar utilizando un comando"
for file in $(ls)
do
    echo "El archivo es: $file"
done

echo "iterar formato tradicional"
for ((i=0; i<10; i++))
do
    echo "El valor de i es: $i"
done

