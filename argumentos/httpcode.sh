#!/bin/bash
# Muestra el código http de una URL pasada por parámetro
if [ "${1}" == "https://www.google.es" ]; then
 echo "Google es una mierda"
else
    if [ $# -eq 0 ]; then
        echo "Debes introducir una URL"
        exit 1
    else
        response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")
        echo El http-code de la web $1: es  $response
    fi
fi