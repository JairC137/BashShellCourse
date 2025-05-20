#!bin/bash
# Autor: Medrano olmos Jose Jair
# Fecha: 2023-10-05
# Descripcion: Script para validar datos de un formulario 
# Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.

regexedad='^([1-9]{1,2})$'
regexnombre='^([A-z]{2,})$'
regexapellido='^([A-z]{2,})$'
regexdireccion='^([A-Z]*)'
regexnumero='^[0-9]{10})$'

nombre=""
apellidos=""
edad=""
direccion=""
telefono=""

echo "Ingrese su nombre: "
read nombre
if [[ $nombre =~ $regexnombre ]]; then
    echo "Nombre correcto"
else
    echo "Nombre incorrecto"
fi

echo "Ingrese su apellido: "
read apellidos
if [[ $apellidos =~ $regexapellido ]]; then
    echo "Apellido correcto"
else
    echo "Apellido incorrecto"
fi
echo "Ingrese su edad: "        
read edad
if [[ $edad =~ $regexedad ]]; then
    echo "Edad correcta"
else
    echo "Edad incorrecta"
fi
echo "Ingrese su direccion: "
read direccion
if [[ $direccion =~ $regexdireccion ]]; then
    echo "Direccion correcta"
else
    echo "Direccion incorrecta"
fi
echo "Ingrese su telefono: "
read telefono
if [[ $telefono =~ $regexnumero ]]; then
    echo "Telefono correcto"
else
    echo "Telefono incorrecto"
fi
echo "Los datos ingresados son: "
echo "Nombre: $nombre"
echo "Apellidos: $apellidos"
echo "Edad: $edad"
echo "Direccion: $direccion"
echo "Telefono: $telefono"
