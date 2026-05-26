#!/bin/bash
read -p "Introduce texto: " texto

echo "Longitud: ${#texto}"
echo "Mayúsculas: ${texto^^}"
echo "Minúsculas: ${texto,,}"