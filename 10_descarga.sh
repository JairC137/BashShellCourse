11_elif.sh                                                                                          0000755 0001750 0001750 00000000444 15007163007 012462  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para ver la estructura de elif
#Merdano Olmos Jose Jair

edad=0

echo "ejemplo elif"

read -p "indica tu edad" edad
if [ $edad -le 18 ]; then 
    echo "Eso es Carcel"
elif [ $edad -ge 19 ] && [ $edad -le 60 ]; then
    echo "Detonable"
else
    echo "Ni lo pienses"
fi

                                                                                                                                                                                                                            11_if_else.sh                                                                                       0000755 0001750 0001750 00000000576 15007155353 013164  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para ver la estructura de if else
#Merdano Olmos Jose Jair


notaClase=0
edad=0

echo "ejemplo if else"
read -n1 -p "indica tu nota" notaClase
echo -e "\n"

if (($notaClase >= 7)); then
    echo "Pasaste mijo"
else 
    echo "Llama+ tarde"
fi

read -p "indica tu edad" edad
if [ $edad -le 18 ]; then 
    echo "No puedes votar"
else
    echo "Puedes votar"
fi

                                                                                                                                  12ifanidado.sh                                                                                      0000755 0001750 0001750 00000001167 15007171657 013340  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                         13ExpCondicionales.sh                                                                               0000755 0001750 0001750 00000000444 15007173116 014637  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para validar si existe una ruta 
#Merdano Olmos Jose Jair

archivo=""

echo "Verificador de rutas de directorio"
read -p "ingrese la ruta del archivo a localizar: " archivo

if [ -d $archivo ]; then
    echo "directorio existe"
else 
    echo "directorio no existe"
fi


                                                                                                                                                                                                                            14Arreglos.sh                                                                                       0000755 0001750 0001750 00000001603 15012674160 013166  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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
                                                                                                                             14Case.sh                                                                                           0000755 0001750 0001750 00000000753 15007174144 012271  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!/bin/bash
# Programa para demostrar case anidado
# Merdano Olmos Jose Jair

echo "Sentencia CASE"
read -p "Ingresa una opción de la A a la Z: " opcion
opcion=${opcion^^}           # convierte a MAYÚSCULAS (opcional)

case $opcion in
  A) echo -e "\nOperación: guardar archivo" ;;
  B) echo -e "\nOperación: eliminar archivo" ;;
  [C-Z]) echo -e "\nOperación: guardar archivo" ;;   # o la que corresponda
  *) echo "Incorrecto" ;;                            # patrón por defecto
esac
                     16ForLoop.sh                                                                                        0000755 0001750 0001750 00000001120 15012675055 012770  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                                                                17while.sh                                                                                          0000755 0001750 0001750 00000000510 15012675550 012523  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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


                                                                                                                                                                                        18LoopAnidado.sh                                                                                    0000755 0001750 0001750 00000000361 15012675770 013615  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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

                                                                                                                                                                                                                                                                               19BandC.sh                                                                                          0000755 0001750 0001750 00000000754 15012677520 012375  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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
                    1_UP.sh                                                                                             0000775 0001750 0001750 00000000174 15006257040 012010  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # !/bin/bash
# Programa para realizar operaciones utilitarias en postgres

echo "bienvenido a curso de programacion bash"


                                                                                                                                                                                                                                                                                                                                                                                                    20MAnejoPostgres.sh                                                                                 0000755 0001750 0001750 00000002237 15012740100 014275  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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
done                                                                                                                                                                                                                                                                                                                                                                 21Directorios.sh                                                                                    0000777 0001750 0001750 00000001375 15012743175 013711  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!/bin/bash
#Programa que ejemplifica la cracion de archivos y directorios
#Merdano Olmos Jose Jair

echo "archivos y directorios"
#Creacion de un directorio
# Explicacion del codigo
# $1 = primer argumento
# $2 = segundo argumento
# el if [ $1 = "d" ] sirve para validar si el primer argumento es igual a "d"
# el if [ $1 = "a" ] sirve para validar si el primer argumento es igual a "a"
# la ejecucion del script es ./21Directorios.sh d nombre_directorio
if [ $1 = "d" ]; then 
    mkdir -m 755 $2
    echo "Directorio creado"
    ls -l $2
    #eliminar directorio
    rmdir $2
elif [ $1 = "a" ]; then
    #Creacion de un archivo
    touch $2
    echo "Archivo creado"
    ls -la $2
    rm -f $2
    echo "Archivo eliminado"
else
    echo "No se ha creado nada"
fi                                                                                                                                                                                                                                                                   22Archivos.sh                                                                                       0000755 0001750 0001750 00000000441 15012750043 013157  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para escribir en un archivo
#Merdano Olmos Jose Jair

echo "escribiendo en un archivo"
echo "Valores escritos con echo" > $1

#adicion multilinea
## el << EOM indica el inicio de un bloque de texto
## el EOM indica el final del bloque de texto
cat << EOM >> $1
$2
EOM
                                                                                                                                                                                                                               23LeerArchivos.sh                                                                                   0000755 0001750 0001750 00000000717 15013122347 013777  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para leer archivos 
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023

echo "leyendo de un archivo"
cat $1

echo -e "almacenando valores en una variable"
valorCat=$(cat $1)
echo "El valor de la variable es: $valorCat"

#Utilizar IFS (Internal Field Separator) para separar los valores y evitar que los espacios en blanco al final de se recortan
echo -e "\nLeer archivos linea por linea"

while IFS= read linea
do
    echo "$linea"
done < $1
                                                 24OpArchivo.sh                                                                                      0000755 0001750 0001750 00000001113 15013124027 013270  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para ver las operaciones de archivos
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Creando directorio"
mkdir -m 755 BackupScript/
echo -e "\nDirectorio Creado"

#Copiando los script a la carpeta BackupScript
#Explicando el uso del *.* sirve para copiar todos los archivos que tengan una extension
cp *.* BackupScript/
ls -la BackupScript/

echo -e "\nMoviendo el directorio al home"
mv BackupScript $HOME
echo -e "\nDirectorio movido al home"
echo -e "\nEliminando el directorio"
#rm -rf $HOME/BackupScript
#echo -e "\nDirectorio eliminado"                                                                                                                                                                                                                                                                                                                                                                                                                                                     25tar.sh                                                                                            0000755 0001750 0001750 00000000561 15013131060 012166  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para empaquetar archivos
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorio"
#-cvf sirve para crear un archivo tar
#-c crea un nuevo archivo tar
#-v muestra el progreso de la compresion
#-f especifica el nombre del archivo tar
tar -cvf ShellCourse.tar *.sh
echo -e "\nArchivo empaquetado"


                                                                                                                                               26gzip.sh                                                                                           0000755 0001750 0001750 00000001061 15013134467 012364  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para empaquetar archivos
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorio"
#-cvf sirve para crear un archivo tar
#-c crea un nuevo archivo tar
#-v muestra el progreso de la compresion
#-f especifica el nombre del archivo tar
tar -cvf ShellCourse.tar *.sh

gzip ShellCourse.tar

#que es el ratio? el ratio es la cantidad de compresion que se aplica al archivo
#-1 es el ratio mas bajo y -9 es el ratio mas alto
echo -e "\nArchivo empaquetado con ratio 9"
gzip -9 ShellCourse.tar



                                                                                                                                                                                                                                                                                                                                                                                                                                                                               27pbzip.sh                                                                                          0000755 0001750 0001750 00000001603 15013135232 012531  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para empaquetar archivos con el comando pbzip2
#Autor: Merdano Olmos Jose Jair
#Fecha: 23/10/2023
#Version: 1.0

echo "Empaquetando arhivos del directorio"
#-cvf sirve para crear un archivo tar
#-c crea un nuevo archivo tar
#-v muestra el progreso de la compresion
#-f especifica el nombre del archivo tar
tar -cvf ShellCourse.tar *.sh

pbzip2 -f ShellCourse.tar

#que es el ratio? el ratio es la cantidad de compresion que se aplica al archivo
#-1 es el ratio mas bajo y -9 es el ratio mas alto
echo -e "\nArchivo empaquetado con tar y comprimido con pbzip2"


#que hace esta linea? esta linea sirve para descomprimir el archivo tar y luego eliminar el archivo tar
#-d descomprime el archivo
#-f especifica el nombre del archivo tar
#-v muestra el progreso de la compresion
tar cf *.sh -c > ShellCourse.tar.pbzip2
echo -e "\nArchivo empaquetado con tar y comprimido con pbzip2"                                                                                                                             2_Variables.sh                                                                                      0000755 0001750 0001750 00000000320 15006431377 013373  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # !/bin/bash
# Programa para revisar declaraciones de variables

opcion=0

nombre=Marco

echo "opcion: $opcion y Nombre: $nombre"

#Exprtar variable 
export nombre 

#Llamr al siguiente script
./2_Variables2
                                                                                                                                                                                                                                                                                                                2_Variables2.sh                                                                                     0000755 0001750 0001750 00000000175 15006431222 013452  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # !/bin/bash
# Programa para revisar declaraciones de variables

echo "Variable que me paso el otro script: Nombre $nombre "
                                                                                                                                                                                                                                                                                                                                                                                                   3Operadores.sh                                                                                      0000755 0001750 0001750 00000001205 15006446727 013440  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
#Revisaremos los tipos de operadores que tenemos
# Medrano Olmos Jose Jair

numA=10
numB=4

echo "operadores aritmeticos"
echo "A: $numA y B: $numB "

echo "Suma: $((numA + numB))"
echo "Resta: $((numA - numB))"
echo "Dividir: $((numA / numB))"
echo "Multiplicar: $((numA * numB))"

echo "Operadores relacionales"
echo "Mayor: $((numA > numB))"
echo "Menor: $((numA < numB))"
echo "Mayor Igual: $((numA >= numB))"
echo "Menor igual: $((numA <= numB))"


echo "Operadores asignacion"
echo "sumar: $((numA += numB))"
echo "restar: $((numA -= numB))"
echo "Multiplicar: $((numA *= numB))"
echo "Dividir: $((numA /= numB))"











                                                                                                                                                                                                                                                                                                                                                                                           4_Argumentos.sh                                                                                     0000755 0001750 0001750 00000000302 15006452413 013603  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
# Argumentos en programacion bash

nombreCurso=$1
horario=$2

echo "el curso es : $nombreCurso en el horario $horario"
echo "parametros enviados $#"
echo "parametros enviados $*"

                                                                                                                                                                                                                                                                                                                              5CambioArgumentos.sh                                                                                0000755 0001750 0001750 00000000333 15006453364 014572  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
# Como ejecutar comandos dentro de otro programa
# Medrano Olmos Jose Jair

ubicacionActual=`pwd`
infokernel=$(uname -a)

echo "Ubicacion actual es: $ubicacionActual e informacion del kernel $infokernel"

                                                                                                                                                                                                                                                                                                     6_readecho.sh                                                                                       0000755 0001750 0001750 00000000467 15006505313 013245  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
# Como capturar informacion con echo read y reply
# Medrano Olmos Jose Jair

option=()
backupname=""
echo "utilidades postgres"
echo -n "ingresar una opcion"
read
option=$REPLY
echo "ingresar el nombre del archivo de back up"
read
backupname=$REPLY
echo "Opcion: $option, backupname: $backupname"
                                                                                                                                                                                                         7_Read.sh                                                                                           0000755 0001750 0001750 00000000543 15006506014 012341  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
# Como capturar informacion utilizando solo read
# Medrano Olmos Jose Jair

option=()
backupname=""
echo "utilidades postgres"
# cambiamos la -n a -p para asignarle valor a la entrada de texto
read -p "ingresar una opcion" option
read -p "ingresar el nombre del archivo de back up" backupname
echo "Opcion: $option, backupname: $backupname"
                                                                                                                                                             8_Validar.sh                                                                                        0000755 0001750 0001750 00000000673 15006513300 013051  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # !/bin/bash
# Como capturar informacion utilizando solo read
# Medrano Olmos Jose Jair

option=()
backupname=""
clave=""
echo "utilidades postgres"
# acepta informacion de un caracter

read -n1 -p "ingresar una opcion" option
echo -e "\n"

read -n10 -p "ingresar el nombre del archivo de back up" backupname
echo -e "\n"

read -s -p "ingresar la clave del archivo" clave
echo -e "\n"

echo "Clave: $clave Nombre: $backupname Opcion: $option"
                                                                     9_opciones.sh                                                                                       0000755 0001750 0001750 00000000602 15006530107 013303  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # !/bin/bash
#opcoines sin parametros
# Medrano Olmos Jose Jair

echo "programa de opciones"
echo "opcion 1: $1"
echo "opcion 2: $2"
echo "opciones enviadas $*"

echo -e "\n"

echo "Recuperando valores"

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utilizada";;
*) echo "$! no es una opcion" ;;
esac
shift
done
                                                                                                                              LeerArchivos.sh                                                                                     0000755 0001750 0001750 00000000441 15012746226 013633  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Programa para escribir en un archivo
#Merdano Olmos Jose Jair

echo "escribiendo en un archivo"
echo "Valores escritos con echo" > $1

#adicion multilinea
## el << EOM indica el inicio de un bloque de texto
## el EOM indica el final del bloque de texto
cat << EOM >> $1
$2
EOM
                                                                                                                                                                                                                               PruebaConcepto.sh                                                                                   0000755 0001750 0001750 00000000115 15013127436 014151  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!/bin/bash
#Medrano Olmos Jose Jair

echo "Ejecutando reto 5"

bash Reto5.sh                                                                                                                                                                                                                                                                                                                                                                                                                                                   PruebaExpresionesRegulares.sh                                                                       0000755 0001750 0001750 00000001341 15006510617 016556  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #! bin/bash
#Ejercicio de Ejemplo uso Regex
#Autor: Sergy Lopez

regexNum='^[0-9]{10}$' #valida numeros de longitud 10
paisRegex='^EC|COL|US$'
dateRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$' #valida >

echo "Expresiones Regulares"
read -p "Ingresa un Id: " id
read -p "Ingresa las Iniciales del Pais: " pais
read -p "Ingresa una fecha yyyymmdd: " date

#Validamos la informacion

if [[ $id =~ $regexNum ]]; then
        echo "ID: $id valido"
else
        echo "ID: $id invalido"
fi

if [[ $pais =~ $paisRegex ]]; then
        echo "Pais: $pais valido"
else
        echo "Pais: $pais invalido"
fi

if [[ $date =~ $dateRegex ]]; then
        echo "Fecha: $date valida"
else
        echo "Fecha: $date invalida"
fi
                                                                                                                                                                                                                                                                                               Reto2.sh                                                                                            0000644 0001750 0001750 00000002557 15006725446 012253  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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
                                                                                                                                                 Reto3.sh                                                                                            0000755 0001750 0001750 00000001413 15007165310 012232  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
#Reto 3 estructura elif
#Merdano Olmos Jose Jair

numero=0

echo "Reto elif numero 3"
echo -e "\n"
echo "ADIVINADOR DE NUMERO"
echo -e "\n"
echo "Ingresar un valor del 1 al 5"
read numero

if [ $numero -eq 1 ]; then 
    echo "El numero en el que pensaste es 1, Numero pensado: $numero"
elif [ $numero -eq 2 ]; then
    echo "El numero en el que pensaste es el 2, Numero pensado: $numero"
elif [ $numero -eq 3 ]; then
    echo "el numero en el que pensaste es el 3, Numero pensado: $numero"
elif [ $numero -eq 4 ]; then 
    echo "el numeroque pensaste es el 4, Numero pensado: $numero"
elif [ $numero -eq 5 ]; then 
    echo "el numero en el que pensaste es el 5, Numero pensado: $numero"
else
    echo "El numero en el que pensaste se sale del rango de calculo"
fi

                                                                                                                                                                                                                                                     Reto4.sh                                                                                            0000755 0001750 0001750 00000003054 15012740634 012242  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                #!bin/bash
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
done                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Reto5.sh                                                                                            0000755 0001750 0001750 00000000751 15013126544 012243  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
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

cat $fecha.log                       UtilityHost.sh                                                                                      0000755 0001750 0001750 00000000276 15006454403 013550  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                # ! /bin/bash
#Reto 1 del curso de programacion en bash


# Declarar variables

option=$1
Result=$2


echo "la opcion que ingreso como argumento fue la: $option y el resultado fue: $Result"
                                                                                                                                                                                                                                                                                                                                  prueba.sh                                                                                           0000755 0001750 0001750 00000004036 15006454773 012535  0                                                                                                    ustar   blessed                         blessed                                                                                                                                                                                                                        echo&quot;███████████████████████████&quot;
        echo&quot;███████▀▀▀░░░░░░░▀▀▀███████&quot;
        echo&quot;████▀░░░░░░░░░░░░░░░░░▀████&quot;
        echo&quot;███│░░░░░░░░░░░░░░░░░░░│███&quot;
        echo&quot;██▌│░░░░░░░░░░░░░░░░░░░│▐██&quot;
        echo&quot;██░└┐░░░░░░░░░░░░░░░░░┌┘░██&quot;
        echo&quot;██░░└┐░░░░░░░░░░░░░░░┌┘░░██&quot;
        echo&quot;██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██&quot;
        echo&quot;██▌░│██████▌░░░▐██████│░▐██&quot;
        echo&quot;███░│▐███▀▀░░▄░░▀▀███▌│░███&quot;
        echo&quot;██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██&quot;
        echo&quot;██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██&quot;
        echo&quot;████▄─┘██▌░░░░░░░▐██└─▄████&quot;
        echo&quot;█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████&quot;
        echo&quot;████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████&quot;
        echo&quot;█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████&quot;
        echo&quot;███████▄░░░░░░░░░░░▄███████&quot;
        echo&quot;██████████▄▄▄▄▄▄▄██████████&quot;
        echo&quot;███████████████████████████&quot;
        echo&quot;.....LOADING.....LOADING......CARGANDO&quot;

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  