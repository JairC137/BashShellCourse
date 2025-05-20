#!bin/bash
#Programa para manejo de utilidades de postgres
#Merdano Olmos Jose Jair

opcion=0

while true
do
 clear
 #menu
 echo "--------------------------------"
 echo "         MENU DE OPCIONES"
 echo "PROGRAMAS DE MANEJO DE POSTGRES"
 echo "--------------------------------"
 echo "1. Crear base de datos"
 echo "2. Eliminar base de datos"
 echo "3. Crear tabla"
 echo "4. Eliminar tabla"
 echo "5. Salir"
 echo "--------------------------------"
 read -p "Seleccione una opcion: " opcion

    #validar opcion ingresada

    case $opcion in
        1)
            echo "Crear base de datos seleccionada"
            sleep 3
            ;;
        2)
            echo "Eliminar base de datos seleccionada"
            sleep 3
            ;;
        3)
            echo "Crear tabla seleccionada"
            sleep 3
            ;;
        4)
            echo "Eliminar tabla seleccionada"
            sleep 3
            ;;
        5)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opcion invalida"
            ;;
    esac
#el done es para volver a mostrar el menu por que el while es infinito, sin el done no se ejecuta el menu
done