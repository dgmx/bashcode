#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 num1 num2"
    exit 1
fi

num1=$1
num2=$2

echo "Suma: $((num1 + num2))"
echo "Resta: $((num1 - num2))"
echo "Multiplicación: $((num1 * num2))"

if [ "$num2" -eq 0 ]; then
    echo "División: Indefinida (división por cero)"
else
    echo "División: $((num1 / num2))"
fi
