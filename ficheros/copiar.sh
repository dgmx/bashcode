# Realizar un script que copie todos los ficheros que se le pasen por parámetro, 
# al directorio misDatos. Si el directorio misDatos no existe, se deberá crear.

directorio="misDatos"

if [ ! -d $directorio ]; then
    mkdir $directorio
fi

for fichero in $@; do
    if [ -e $fichero ]; then
        cp $fichero $directorio/
    fi
done