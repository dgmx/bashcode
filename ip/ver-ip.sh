#!/bin/bash
if [ $# -eq 1 ]; then
    ip=$1
else
    read -p "Introduce la dirección IP: " ip
fi
echo $ip

