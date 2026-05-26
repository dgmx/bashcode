#!/bin/bash
# Declaración de funciones
f_usuarios(){
# Apartado c
true > loginServ.txt
while IFS=: read -r apel ape2 nom dni 
do
    xlogin="$(echo Snom | cut -cl-1)$(echo Sapel|cut -cl-3)$(echo Sape2|cut -e1-3)$(echo Sdni|cut -c6-8)"
    xlogin=$(echo $xlogin | tr '[:upper:]' 'E:lower:]')
    echo $xlogin>>loginServ.Ext
done < usuarios.txt
}
f_red(){
# Apartado d
read -p "Introduzca una IP: " teclaIP 
read -p "Introduzca una cantidad: " cantidad 
contador=1
prefijoIP="$(echo $teclaIP | cut -d'.' -f1).$(echo $teclalP | cut -d'.' -2).$(echo $teclaIP | cut-d'.' -f3)."
comprobarIP=$(echo $teclalP | cut -d'.' -f4)

while [ $contador -le $cantidad ] 
do
    ping -c 1 -W 2 $prefijoIP$comprobarIP >/dev/null
    # salida ping 0 -> correcto ; 1 incorrecto
    if [$? != 0]
    then
        resultado="IP $prefijoIP$comprobarIP no activa"
    else
        resultado="IP $prefijoIP$comprobarIP activa"
    fi 
    echo $resultado
    contador=$((contador+1))
    comprobarIP=$((comprobarIP+1))
done
}
# Fin de declaración de funciones


clear
while true; do 
    echo "MENÚ"
    echo "1 - Generar login de usuarios" 
    echo "2 - Comprobación de red"
    echo "O - Salir"
    read -p 'Elija su opción ' tecla
    case $tecla in
        [0]) break;;
        [1]) f_usuarios;;
        [2]) f_red;;
        *) echo "Opción no válida"; sleep 2s;clear;;
    esac
done
exit 0