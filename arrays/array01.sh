#!/bin/bash
nombres=("Ana" "Luis" "Carlos" "Marta" "Sofía")

for nombre in "${nombres[@]}"; do
  echo $nombre
done
# echo "________________"
# printf '%s\n' "${nombres[@]}"