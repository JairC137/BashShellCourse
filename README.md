### ¿Qué es?

Bash scripting es el arte de escribir scripts (pequeños programas) usando el lenguaje del shell Bash (Bourne Again SHell), que automatiza tareas en sistemas operativos tipo Unix/Linux. Permite ejecutar comandos, controlar el flujo del programa (condicionales, bucles) y manipular archivos y texto.

---

### Primer paso

Para comenzar a escribir un script en Bash:

1. Crear un archivo con extensión .sh, por ejemplo:
    
    bash
    bash
    CopiarEditar
    vi mi_script.sh
    
2. Agregar la "shebang" en la primera línea para indicar que se ejecutará con Bash:
    
    bash
    bash
    CopiarEditar
    #!/bin/bash
    
3. Guardar y salir del editor. Luego, darle permisos de ejecución:
    
    bash
    bash
    CopiarEditar
    chmod +x mi_script.sh


---

### Configurar el editor Vim (opcional, pero recomendado)

Crea un archivo de configuración .vimrc en tu directorio personal o edítalo con:

bash
bash
CopiarEditar
vi ~/.vimrc

Y agrega estas líneas para mejorar tu experiencia:

vim
CopiarEditar
set showmode      " Muestra el modo actual en la parte inferior
set autoindent    " Indentación automática
set tabstop=4     " Tamaño del tabulador = 4 espacios
set expandtab     " Convierte tabulaciones en espacios
syntax on         " Activa el resaltado de sintaxis

---

### ¿Cómo se organizan los números de permisos en Linux?

Los permisos se representan con números octales, donde:

- **4** = Lectura (r)
- **2** = Escritura (w)
- **1** = Ejecución (x)

Se suman por tipo de usuario:

- Primer dígito: **dueño**
- Segundo dígito: **grupo**
- Tercer dígito: **otros**

Ejemplo:

bash
bash
CopiarEditar
chmod 755 archivo.sh

Significa:

- Dueño: rwx (4+2+1 = 7)
- Grupo: r-x (4+0+1 = 5)
- Otros: r-x (4+0+1 = 5)

---

### Uso del type

El comando type se usa para saber qué tipo de comando es algo:

bash
bash
CopiarEditar
type ls

Puede decir si es un alias, un binario, una función, etc.

---

### Variable en un programa Bash

Se definen así:

bash
bash
CopiarEditar
nombre="Juan"

Se accede con $:

bash
bash
CopiarEditar
echo $nombre

No debe haber espacios alrededor del =.

---

### ¿Qué es una variable de entorno?

Son variables que afectan el entorno de todos los procesos en ejecución. Son heredadas por los programas hijos del shell.

Ejemplo común:

bash
bash
CopiarEditar
echo $PATH

---

### Accedemos con:

bash
bash
CopiarEditar
sudo vim /etc/profile

Este archivo define variables de entorno para todos los usuarios (globales). Se ejecuta al iniciar sesión.

---

### Alcance de las variables

- **Locales**: solo existen dentro del script o función.
- **De entorno**: accesibles por subprocesos.

---

### Uso del export para exportar variables

Para hacer que una variable esté disponible para los procesos hijos:

bash
bash
CopiarEditar
export VAR=valor

---

### Tipos de operadores

### Aritméticos:

bash
bash
CopiarEditar
+  -  *  /  %  **  ++  --

### Comparación numérica:

bash
bash
CopiarEditar
-eq  -ne  -lt  -le  -gt  -ge

### Comparación de cadenas:

bash
bash
CopiarEditar
=  !=  <  >  -z  -n

### Booleanos:

bash
bash
CopiarEditar
!  -o  -a

### De archivos:

bash
bash
CopiarEditar
-e  -f  -d  -r  -w  -x  -s

---

### Scripts con argumentos

Los argumentos se acceden con $1, $2, etc.

bash
bash
CopiarEditar
#!/bin/bash
echo "El primer argumento es: $1"

$# = número de argumentos

$@ = todos los argumentos

---

### Sustituir comandos en variables

Usando **comillas inversas** o $(...):

bash
bash
CopiarEditar
fecha=$(date)
echo "Hoy es: $fecha"

---

### Depurar con bash -x o bash -v

- bash -x script.sh: Muestra cada línea ejecutada con los valores de las variables.
- bash -v script.sh: Muestra todas las líneas del script a medida que se leen (útil para entender el flujo).

## **Scripts Interactivos en Bash**

### **Capturar información del usuario**

- Uso de read para obtener datos del usuario:
    
    bash
    bash
    CopiarEditar
    read -p "Introduce tu nombre: " nombre
    echo "Hola, $nombre"
    

### **Uso de read y respuesta (reply)**

- read puede guardar la entrada en la variable REPLY si no se especifica una variable:
    
    bash
    bash
    CopiarEditar
    read -p "¿Deseas continuar? (s/n): "
    echo "Respuesta: $REPLY"
    

---

## **Descargar Información de Internet usando Bash**

### **Uso de wget**

- Descargar archivos desde la web:
    
    bash
    bash
    CopiarEditar
    wget https://ejemplo.com/archivo.txt
    

---

## **Condicionales en Bash**

### **Estructura básica de if, elif, y else**

bash
bash
CopiarEditar
if [ condición ]; then
    # Sentencias si se cumple la condición
elif [ otra_condición ]; then
    # Sentencias si se cumple la segunda condición
else
    # Sentencias si no se cumple ninguna condición
fi

### **Ejemplo práctico**

bash
bash
CopiarEditar
numero=10
if [ $numero -gt 0 ]; then
    echo "El número es positivo"
elif [ $numero -lt 0 ]; then
    echo "El número es negativo"
else
    echo "El número es cero"
fi

---

## **Arreglos en Bash**

### **Definición de arreglos**

bash
bash
CopiarEditar
mi_arreglo=(uno dos tres)

### **Acceso a elementos**

bash
bash
CopiarEditar
echo ${mi_arreglo[0]}  # Imprime "uno"

### **Recorrer un arreglo**

bash
bash
CopiarEditar
for elemento in "${mi_arreglo[@]}"; do
    echo $elemento
done

### **Arreglos de cadenas, números y rangos**

bash
bash
CopiarEditar
cadenas=("hola" "mundo")
numeros=(1 2 3 4)
rangos=({1..5})

---

## **Loops en Bash**

### **Bucle while**

bash
bash
CopiarEditar
contador=1
while [ $contador -le 5 ]; do
    echo "Contador: $contador"
    ((contador++))
done

### **Bucle for**

bash
bash
CopiarEditar
for i in {1..5}; do
    echo "Número: $i"
done

### **Loops anidados**

bash
bash
CopiarEditar
for i in {1..3}; do
    for j in {a..c}; do
        echo "$i$j"
    done
done

### **break y continue**

- break: termina el bucle actual.
- continue: salta a la siguiente iteración.

bash
bash
CopiarEditar
for i in {1..5}; do
    if [ $i -eq 3 ]; then
        continue
    fi
    echo $i
done

---

## **Manejo de Directorios y Archivos**

### **Crear, modificar y eliminar**

bash
bash
CopiarEditar
mkdir nuevo_directorio      # Crear directorio
touch archivo.txt           # Crear archivo
rm archivo.txt              # Eliminar archivo
rm -r nuevo_directorio      # Eliminar directorio

---

## **Funciones en Bash**

### **Definición y uso**

bash
bash
CopiarEditar
mi_funcion() {
    echo "Hola desde una función"
}

mi_funcion

### **Paso de argumentos**

bash
bash
CopiarEditar
saludar() {
    echo "Hola, $1"
}

saludar "Carlos"
