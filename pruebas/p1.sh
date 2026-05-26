function f_Uso(){
    echo "Uso: $0 <directorio>"
    exit 1
}
if [ $# -eq 1 ]; then
    fecha=$(date +%Y%m%d)
    tar -czf "backup_${fecha}.tar.gz" "$1"
else
    echo "Error: Número de parámetros incorrecto"
    f_Uso
fi