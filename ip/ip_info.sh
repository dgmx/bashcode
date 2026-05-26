# Devuelve dirección de red y broadcast dada una IP y un CIDR dados

#!/bin/bash

if [ $# -eq 1 ]; then
    input="$1"
else
    read -p "Introduce la IP (ej. 192.168.1.100): " ip
    read -p "Introduce el CIDR (ej. 24): " cidr
    input="$ip/$cidr"
fi

python3 -c "
import ipaddress
try:
    net = ipaddress.IPv4Network('$input', strict=False)
    print('Dirección de red:', net.network_address)
    print('Dirección de broadcast:', net.broadcast_address)
except Exception as e:
    print('Error:', e)
"
