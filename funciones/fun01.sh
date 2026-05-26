#!/bin/bash

es_par() {
    local num=$1
    if ((num % 2 == 0)); then
        echo "par"
    else
        echo "impar"
    fi
}

if [ $# -eq 0 ]; then
    echo "Uso: $0 <numero>"
    exit 1
fi

es_par $1