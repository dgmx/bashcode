#!/bin/bash
# Script al que se le pasa como argumento el nombre de un fichero y muestra en pantalla el contenido cambiando:
# R_minusculas.txt: contenido del fichero todo en minusculas
# R_mayusculas.txt: contenido del fichero en mayúsculas
# R_sinA.txt: contenido del fichero eliminando todas las ocurrencias de la letra "a"
# R_VOCALES.txt: contenido del fichero pasando todas las vocales a mayúsculas


function ayuda () {
echo "Script que qe hace cambios en el contenido de un fichero y generando ficheros de salida que comienzan por R_"
echo "R_minusculas.txt: contenido del fichero todo en minusculas"
echo "R_mayusculas.txt: contenido del fichero en mayúsculas"
echo "R_sinA.txt: contenido del fichero eliminando todas las ocurrencias de la letra a"
echo "R_VOCALES.txt: contenido del fichero pasando todas las vocales a mayúsculas"


echo "Sintaxis:"
echo "	$0 <fichero_texto_plano>"
echo " "

}


# Comprobación del número de argumentos
if [[ $# -ne 1 ]]
then
	echo "Número de argumentos incorrecto"
	ayuda
	exit 1	#salida con error
fi


cat $1 | tr [:upper:] [:lower:] > R_minusculas.txt	#Generar fichero en minúsculas

cat $1 | tr [:lower:] [:upper:] > R_mayusculas.txt	#Generar fichero en mayusculas

cat $1 | tr aA ' ' > R_sinA.txt	#Generar fichero sin la vocal a,A --> ponemos un espacio en blanco en su lugar

cat $1 | tr [aeiou] [AEIOU] > R_VOCALES.txt	# Generar fichero con las vocales en mayúsculas

exit 0

