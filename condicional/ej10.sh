#!/bin/bash

# Script que resuelve R=3x²+5x+8
# Siendo la x el argumento pasado al script



function ayuda () {
echo "Script que resuelve R=3x²+5x+8"
echo "Siendo la x el argumento suministrado al script"

echo "Sintaxis:"
echo "	$0 <valor de x>"
echo " "

}


# Comprobación del número de argumentos
if [[ $# -ne 1 ]]
then
	echo "Número de argumentos incorrecto"
	ayuda
	exit 1	#salida con error
fi


# Comprobación de que el argumento es un número
valor=$(($1))		# conversión del primer argumento a valor numérico

if [[ $1 != $valor  ]]	# si no son iguales entonces no es un valor numerico
then
	echo "El argumento introducido no es un valor numérico"
	ayuda	# Mostrar función de ayuda
	exit 1	#Salida con error
fi

echo -n "R=3x²+5x+8 = "
echo "3*$1*$1+5*$1+8" | bc		#Cálculo de la operación matemática empleando bc

exit 0


