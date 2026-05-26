#!/bin/bash

read -p "Introduce el día de la semana (lun/mar/mie/jue/vie/sab/dom): " dia

case "$dia" in
    lun | lunes)
        echo "Lunes: inicio de semana laboral"
        ;;
    mar | martes)
        echo "Martes: segundo día laboral"
        ;;
    mie | miercoles | miércoles)
        echo "Miércoles: mitad de semana"
        ;;
    jue | jueves)
        echo "Jueves: casi viernes!"
        ;;
    vie | viernes)
        echo "Viernes: ¡fin de semana laboral!"
        ;;
    sab | sabado | sábado | dom | domingo)
        echo "Fin de semana: ¡a descansar!"
        ;;
    *)
        echo "Día no reconocido: $dia"
        exit 1
        ;;
esac