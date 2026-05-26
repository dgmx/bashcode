#!/usr/bin/bash
echo "* Introduce la tabla de multiplicar: "
read tabla
for i in {1..10}; do
	echo "$tabla x $i = $(( tabla * i ))"
done

