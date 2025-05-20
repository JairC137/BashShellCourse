#!bin/bash
#Programa para manejo de utilidades de postgres
#Merdano Olmos Jose Jair


opcion=0
fecha=$(date +%d-%m-%Y)

#crear funciones

instalar_postgres(){
    echo "Instalando postgres"
    echo "verificando si postgres ya esta instalado"

    #verificar si postgres ya esta instalado
    verify=(psql)
    if [ $? -eq 0 ]; then
        echo "Postgres ya esta instalado"
    else
        
        echo $password | sudo -S apt-get update
        echo $password | sudo -S apt-get install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres PASSWORD '$password';"
        echo "$password" | sudo -s systemctl enable postgresql.service
        echo "$password" | sudo -s systemctl start postgresql.service
        echo "Postgres instalado"
    fi

    read -n 1 -s -r -p "Presione cualquier tecla para continuar..."
}

desinstalar_postgres(){
    echo "Desinstalando postgres"
    read -s -p "Ingrese la contraseña de sudo: " password
    echo $password | sudo -S systemctl stop postgresql.service
    echo $password | sudo -S apt-get -y --purge remove postgresql*
    echo $password | sudo -S rm -r /etc/postgresql
    echo $password | sudo -S rm -r /etc/postgresql-common
    echo $password | sudo -S rm -r /var/lib/postgresql
    echo $password | sudo -S userdel -r postgres
    echo $password | sudo -S groupdel postgres
    read -n 1 -s -r -p "Presione cualquier tecla para continuar..."
    echo "Postgres desinstalado"
}
crear_respaldo(){
    echo "Creando respaldo"
    echo "listar bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Ingrese el nombre de la base de datos: " dbname
    if [ -d "$1" ]; then
        echo "$password" | sudo -S chmod 755 $1
        echo "respaldo realizado"
        sudo -u postgres pg_dump $dbname > $1/respaldo_$dbname_$fecha.bak
        echo "respaldo realizado en $1/respaldo_$dbname_$fecha.bak"
    else
        echo "La ruta no existe"
        return
    fi
    read -n 1 -s -r -p "Presione cualquier tecla para continuar..."

}
restaurar_respaldo(){
        echo "listar respaldos"
        read -p "ingrese el directorio donde se encuentra el respaldo: " ruta
        ls $ruta
        read -p "Ingrese el nombre del respaldo: " respaldo
        if [ -f "$ruta/$respaldo" ]; then
            echo "restaurando respaldo"
            read -p "Ingrese el nombre de la base de datos: " dbname
            echo $password | sudo -S chmod 755 $ruta/$respaldo
            echo $password | sudo -S psql $dbname < $ruta/$respaldo
            echo "respaldo restaurado"
        else
            echo "El respaldo no existe"
            return
        fi
}




while true
do
 clear
 #menu
 echo "--------------------------------"
 echo "         MENU DE OPCIONES"
 echo "PROGRAMAS DE MANEJO DE POSTGRES"
 echo "--------------------------------"
 echo "1. Instalar postgres"
 echo "2. Desinstalar postgres"
 echo "3. Crear respaldo"
 echo "4. Restaurar respaldo"
 echo "5. Salir"
 echo "--------------------------------"
 read -p "Seleccione una opcion: " opcion

    #validar opcion ingresada

    case $opcion in
        1)
            instalar_postgres

            ;;
        2)
            desinstalar_postgres

            ;;
        3)
            read -p "Ingrese la ruta donde se guardara el respaldo: " ruta
            crear_respaldo $ruta
            sleep 3
            ;;
        4)
            read -p "Ingrese la ruta donde se guardara el respaldo: " ruta
            restaurar_respaldo $ruta
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