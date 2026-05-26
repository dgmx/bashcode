#! /bin/bash

echo -n Introduce un valor:
read v1

read -p "Introduce operador +-*/ :" operador

read -p "Introduce otro valor: " v2

resultado=$(( v1 $operador v2 ))

echo Resultado = $resultado

