#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Uso: $0 <servicio> <acción>"
    echo "Acciones: start | stop | restart | status | enable | disable"
    exit 1
fi

SERVICIO="$1"
ACCION="$2"

case "$ACCION" in
    start)
        echo "Iniciando $SERVICIO..."
        systemctl start "$SERVICIO" && echo "OK" || echo "ERROR"
        ;;
    stop)
        echo "Deteniendo $SERVICIO..."
        systemctl stop "$SERVICIO" && echo "OK" || echo "ERROR"
        ;;
    restart)
        echo "Reiniciando $SERVICIO..."
        systemctl restart "$SERVICIO" && echo "OK" || echo "ERROR"
        ;;
    status)
        systemctl status "$SERVICIO"
        ;;
    enable)
        echo "Habilitando $SERVICIO en el arranque..."
        systemctl enable "$SERVICIO" && echo "OK" || echo "ERROR"
        ;;
    disable)
        echo "Deshabilitando $SERVICIO en el arranque..."
        systemctl disable "$SERVICIO" && echo "OK" || echo "ERROR"
        ;;
    *)
        echo "Acción no reconocida: $ACCION"
        exit 1
        ;;
esac