#!/bin/bash

# Lista de hosts a verificar
HOSTS=("192.168.1.1" "192.168.1.10" "8.8.8.8" "8.8.4.4" "1.1.1.1")

echo "================================================"
printf "%-20s %-10s\n" "HOST" "ESTADO"
echo "================================================"

for host in "${HOSTS[@]}"; do
    if ping -c 1 -W 1 "$host" &>/dev/null; then
        printf "%-20s \033[1;32m%-10s\033[0m\n" "$host" "ACTIVO"
    else
        printf "%-20s \033[1;31m%-10s\033[0m\n" "$host" "CAÍDO"
    fi
done

echo "================================================"