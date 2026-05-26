#!/bin/bash

read -p "Introduce tu nombre: " nombre
read -p "Introduce tus apellidos: " apellidos

fecha_hora=$(date "+%d/%m/%Y %H:%M:%S")

echo "Hola $nombre $apellidos, la fecha y hora actual es: $fecha_hora"
