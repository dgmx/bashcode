# Escribe un script que muestre todos los números del 1 al 100 que sean divisibles por 3 y por 5 simultáneamente.

#!/bin/bash

for i in {1..100}; do
    if (( i % 3 == 0 && i % 5 == 0 )); then
        echo "$i"
    fi
done
