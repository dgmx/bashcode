#!/bin/bash

# Script que muestra información detallada de un usuario del sistema
# Obtiene y muestra:
# - Nombre de usuario
# - Directorio de trabajo (home directory)
# - Shell asociada al usuario
# Funciona consultando el archivo /etc/passwd
# Requiere un argumento: el nombre del usuario a consultar
# Ejemplo: ./ej8.sh diego

function ayuda () {
echo "Script que muestra información del usuario pasado como argumento"
echo "Sintaxis:"
echo "	$0 <usuario>"
echo " "

}

# Comprobación de número de argumentos
if [[ $# -ne 1 ]]
then
	echo "Número de argumentos incorrecto"
	ayuda
	exit 1	#salida con error
fi

# Buscar usuario
cat /etc/passwd | grep $1 >/dev/null


if [[ $? -eq 0 ]]	# Usuario encontrado
then
	echo "Nombre de usuario: $1"
	echo "Directorio de trabajo: $(cat /etc/passwd | grep $1 | cut -d: -f6)"
	echo "Shell asociada al usuario: $(cat /etc/passwd | grep $1 | cut -d: -f7)"
	

else			# Usuario no encontrado
	echo "Usuario no encontrado"
	exit 1	#salida con error

fi

exit 0	#salida sin error

