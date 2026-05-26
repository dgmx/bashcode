#!/bin/bash
num1=$1  # la variable toma el primer valor que le pasamos al script
num2=$2  # la variable toma el segundo valor que le pasamos al script
if [[ $num1 -gt $num2 ]];
then
  echo $num1 es mayor que $num2
else
  echo $num2 es mayor que $num1
fi
