echo "=== Ficheros en /etc que empiezan por 'h' ==="
for fichero in ~/s*; do
    if [ -f "$fichero" ]; then
        echo "  Fichero: $fichero"
    fi
done