#!/bin/bash
function cuadrado() {
  echo $(($1 * $1))
}
if [ $# -eq 1 ]; then
    num=$1
else
    read -p "Introduce un número: " num
fi
resultado=$(cuadrado num)
echo "Resultado: $resultado"