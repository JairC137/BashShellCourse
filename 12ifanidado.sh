#!bin/bash
#Programa para ver la estructura de los if anidados
#Merdano Olmos Jose Jair

notasClase=0
continua=""

echo "Inf anidados"
echo -e "\n"
read -p "Ingresa tu nota" notasClase

if [ $notasClase -le 5 ]; then
    echo "Te toca recursar la materia"
elif [ $notasClase -le 9 ] && [ $notasClase -ge 6 ]; then
    echo "Pasaste el curso"
    read -p "Quieres hacer el examen para subir calificacion" continua
    if [ $continua = "s" ]; then
        echo "gracias, te adjuntaremos a tu correo la liga del examen"
    else
        echo "gracias, calificacion anotada"
    fi
else 
    echo "SACASTE 10 PADRINO, FELICIDADES"
fi

