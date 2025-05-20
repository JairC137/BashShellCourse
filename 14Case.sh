#!/bin/bash
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
