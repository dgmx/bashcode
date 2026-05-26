#!/bin/bash
# Add two numeric value
echo -n Introduce numero 1:
read num1
read -p "Introduce numero 2:" num2
sum=$(( $num1 + $num2 ))
#Print the result
echo $sum
