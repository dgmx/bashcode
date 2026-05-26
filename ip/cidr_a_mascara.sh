#!/bin/bash

if [ $# -eq 1 ]; then
    cidr="$1"
else
    read -p "Introduce el número CIDR (0-32): " cidr
fi

if ! [[ "$cidr" =~ ^[0-9]+$ ]] || [ "$cidr" -lt 0 ] || [ "$cidr" -gt 32 ]; then
    echo "CIDR inválido. Debe ser un número entre 0 y 32."
    exit 1
fi

python3 -c "
cidr = $cidr
mask = (0xFFFFFFFF << (32 - cidr)) & 0xFFFFFFFF
print('{}.{}.{}.{}'.format((mask >> 24) & 0xFF, (mask >> 16) & 0xFF, (mask >> 8) & 0xFF, mask & 0xFF))
"
