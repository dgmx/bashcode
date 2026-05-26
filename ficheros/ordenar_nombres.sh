# Crea un script que lea una lista de nombres desde un fichero (uno por línea) y los muestre ordenados alfabéticamente.

#!/bin/bash

read -p "Introduce la ruta del fichero: " fichero

if [ ! -f "$fichero" ]; then
    echo "El fichero no existe"
    exit 1
fi
# Para imprimir en otro fichero:
# sort "$fichero" > ordenado.txt
# Solo mostrarlos
sort "$fichero"
