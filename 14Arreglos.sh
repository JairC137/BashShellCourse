#!bin/bash
#Programa para validar si existe una ruta 
#Merdano Olmos Jose Jair

numeros=(1 2 3 4 5 6 7 8 9)
cadenas=(Jose, Jair, Medrano, Olmos)
Rangos=({a..z} {1..10})

echo "numeros: ${numeros[*]}"
echo "cadenas: ${cadenas[*]}"
echo "rangos: ${Rangos[*]}"

#Tamano de un arreglo
echo "El tamano del arreglo numeros es: ${#numeros[*]}"
echo "El tamano del arreglo cadenas es: ${#cadenas[*]}"     
echo "El tamano del arreglo Rangos es: ${#Rangos[*]}"

#imrimir la posicion 3 del arreglo
echo "El tamano del arreglo numeros es: ${numeros[3]}"
#imrimir la posicion 3 del arreglo
echo "El tamano del arreglo cadenas es: ${cadenas[3]}"
#imrimir la posicion 3 del arreglo
echo "El tamano del arreglo Rangos es: ${Rangos[3]}"

#añadir y eliminar elementos de un arreglo
numeros[3]=7
echo "numeros: ${numeros[*]}"

# unset elimina un elemento de un arreglo
unset numeros[3]
echo "numeros: ${numeros[*]}"
