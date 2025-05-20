#!bin/bash
#Programa para manejo menu de opciones
#Merdano Olmos Jose Jair

opcion=0

while true
do
 clear
 echo "--------------------------------"
 echo "         MENU DE OPCIONES"
 echo ""
 echo "--------------------------------"
 echo "1. Procesos actuales"
 echo "2. memoria disponible"
 echo "3. Espacio en disco"
 echo "4. informacion de red"
 echo "5. Variables de entorno configuradas"
 echo "6. informacion del programa"
 echo "7. Backup de infromacion"
 echo "8. Salir"
 echo "--------------------------------"
 read -p "Seleccione una opcion: " opcion

    #validar opcion ingresada

    case $opcion in
        1)
            echo "Procesos actuales seleccionada"
            sleep 1
            ;;
        2)
            echo "memoria disponible seleccionada"
            sleep 1         
            ;;
        3)
            echo "Espacio en disco seleccionada"
            sleep 1
            ;;
        4)
            echo "informacion de red seleccionada"
            sleep 1
            ;;
        5)
            echo "Variables de entorno configuradas seleccionada"
            sleep 1
            ;;
        6)
            echo "informacion del programa seleccionada"
            sleep 1
            ;;
        7)
            echo "Backup de infromacion seleccionada"
            sleep 1
            ;;
        8)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opcion invalida"
            ;;
    esac
#el done es para volver a mostrar el menu por que el while es infinito, sin el done no se ejecuta el menu
done