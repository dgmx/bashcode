#!/bin/bash

function f_Ayuda () {
echo "Script que genera una copia de seguridad de un directorio indicado como argumento"

echo "Sintaxis:"
echo "$0 <DIRECTORIO>"
echo "😭"
}

DIRECTORIO=$1
FECHA=$(date +%Y%m%d)

if [ -z "$DIRECTORIO" ]; then
    f_Ayuda
    exit 1
fi
# -z cadena vacía

if [ ! -d "$DIRECTORIO" ]; then
    echo "Error: El directorio $1 no existe"
    exit 1
fi
# -d directorio. 

NOMBRE_BACKUP="backup_$DIRECTORIO_$FECHA.tar.gz"
echo $NOMBRE_BACKUP

tar -czf $NOMBRE_BACKUP $DIRECTORIO 

if [ $? -eq 0 ]; then
    echo "Backup creado: $NOMBRE_BACKUP"
else
    echo "Error al crear el backup"
    exit 1
fi