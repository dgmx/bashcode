#!/bin/bash
# Suma 2 números pasados por parametro
#Si no se han pasado 2 parámetros muestra mensaje de error y finaliza

if [ $# -ne 2 ]; then
    echo "Uso: $0 x y"
    echo -e "\t donde x e y son dos números"
    exit 1 #Salida distinta de 0 para indicar que es salida error
fi

suma=$(($1 + $2))
echo "La suma de $1 y $2 es $suma"