# ! /bin/bash
#Merdano Olmos Jose Jair
#Reto 5 del curso de programacion en bash
#crear un archivo log con el formato YYYY-MM-DD_HH:MM:SS adentro del archivo la informacion del kernel y usuario
#Declarar variables
fecha=$(date +%Y-%m-%d_%H-%M-%S)
usuario=$(whoami)
kernel=$(uname -r)

#Crear el archivo log

echo "Creando el archivo de $usuario con la fecha $fecha"
echo "Informacion del kernel: $kernel" >> $fecha.log
echo "Informacion del usuario: $usuario" >> $fecha.log

cat $fecha.log