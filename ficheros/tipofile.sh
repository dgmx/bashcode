#!/bin/bash

for fichero in "$@"; do
    if [ -e "$fichero" ]; then
        tipo=$(file --brief "$fichero")
        echo "$fichero: $tipo"
    fi
done