if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi
tar -czf "backup_$(date +%Y-%m-%d).tar.gz" "$1"
