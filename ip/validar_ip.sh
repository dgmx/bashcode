#!/bin/bash

ip="${1:-$(read -p "Introduce la dirección IP: " ip && echo "$ip")}"

IFS='.' read -ra o <<< "$ip"
if [[ "${#o[@]}" -eq 4 && "$ip" =~ ^[0-9]+(\.[0-9]+){3}$ ]] && \
   (( o[0] <= 255 && o[1] <= 255 && o[2] <= 255 && o[3] <= 255 )); then
    echo "IP válida"
else
    echo "IP no válida"
fi
