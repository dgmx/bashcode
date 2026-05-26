# Deseamos implementar la funcionalidad de la papelera de escritorio con dos shell scripts en linux.
# Los scripts son delete y undelete. El script delete mueve el fichero o directorio deseado a un directorio 
# de nombre TRASHDIR que ha de estar en el directorio home de cualquier usuario.
# Si no se encuentra, hay que crearlo.

# La recuperación del fichero o directorio borrado se realizará en el directorio actual de trabajo.
# Los scripts deberán de ser llamados por su nombre.


#!/bin/bash
#Función que explica como ejecutar el scripts
function f_uso(){
    echo "USO: $0 <fichero|directorio>"
    exit 1
}
#INICIO PROGRAMA
#Ejecución con número de parámetros correcto
if [ $# -eq 1 ]
then
    #Comprobamos si existe un fichero o directorio con el
    #nombre que se ha pasado como parámetro
    if [ -f $1 -o -d $1 ]; then
            if [ ! -d TRASHDIR ]; then
                mkdir TRASHDIR && echo "Directorio TRASHDIR creado"
            fi

            mv $1 TRASHDIR && echo ""$1" se ha movido al directorio TRASHDIR"
    #Si no es un archivo o directorio se muestra un mensaje
    else
        echo "No existe ningún fichero o directorio llamado "$1""
    fi
#Ejecución con número de parámetros incorrecto
else
    echo "ERROR: Ejecución con número de parámetros incorrecto"
    f_uso
fi