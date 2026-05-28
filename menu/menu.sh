#!/usr/local/bin/bash

# Menu-driven program for basic Linux commands

# Function definitions
show_menu() {
    clear
    echo "=============================="
    echo "  Menú de Comandos Básicos    "
    echo "=============================="
    echo "1) Listar contenido de directorio"
    echo "2) Mostrar directorio actual"
    echo "3) Mostrar fecha y hora"
    echo "4) Mostrar uso de disco"
    echo "5) Mostrar uso de memoria"
    echo "6) Mostrar usuarios conectados"
    echo "7) Crear un directorio"
    echo "8) Eliminar un directorio"
    echo "9) Copiar un archivo"
    echo "10) Mover o renombrar un archivo"
    echo "11) Mostrar contenido de un archivo"
    echo "12) Salir"
    echo  -n "Seleccione una opción: "
}

list_dir() {
    echo "Contenido del directorio actual:"
    ls -la
    echo
    read -p "Presione Enter para continuar..."
}

show_pwd() {
    echo "Directorio actual: $(pwd)"
    echo
    read -p "Presione Enter para continuar..."
}

show_date() {
    echo "Fecha y hora actuales: $(date)"
    echo
    read -p "Presione Enter para continuar..."
}

show_disk_usage() {
    echo "Uso de disco:"
    df -h
    echo
    read -p "Presione Enter para continuar..."
}

show_mem_usage() {
    echo "Uso de memoria:"
    free -h
    echo
    read -p "Presione Enter para continuar..."
}

show_users() {
    echo "Usuarios conectados:"
    who
    echo
    read -p "Presione Enter para continuar..."
}

create_dir() {
    read -p "Ingrese el nombre del directorio a crear: " dirname
    if [ -z "$dirname" ]; then
        echo "Nombre no puede estar vacío."
    else
        mkdir -p "$dirname" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Directorio '$dirname' creado exitosamente."
        else
            echo "Error al crear el directorio '$dirname'."
        fi
    fi
    echo
    read -p "Presione Enter para continuar..."
}

delete_dir() {
    read -p "Ingrese el nombre del directorio a eliminar: " dirname
    if [ -z "$dirname" ]; then
        echo "Nombre no puede estar vacío."
    else
        rmdir "$dirname" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Directorio '$dirname' eliminado exitosamente."
        else
            echo "Error al eliminar el directorio '$dirname'. Puede que no esté vacío o no exista."
        fi
    fi
    echo
    read -p "Presione Enter para continuar..."
}

copy_file() {
    read -p "Ingrese el archivo origen: " src
    read -p "Ingrese el archivo destino: " dest
    if [ -z "$src" ] || [ -z "$dest" ]; then
        echo "Ambos campos son obligatorios."
    else
        cp "$src" "$dest" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Archivo '$src' copiado a '$dest'."
        else
            echo "Error al copiar el archivo. Verifique que '$src' exista y tenga permisos."
        fi
    fi
    echo
    read -p "Presione Enter para continuar..."
}

move_file() {
    read -p "Ingrese el archivo origen: " src
    read -p "Ingrese el nuevo nombre o ruta destino: " dest
    if [ -z "$src" ] || [ -z "$dest" ]; then
        echo "Ambos campos son obligatorios."
    else
        mv "$src" "$dest" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Archivo '$src' movido a '$dest'."
        else
            echo "Error al mover el archivo. Verifique que '$src' exista."
        fi
    fi
    echo
    read -p "Presione Enter para continuar..."
}

show_file_content() {
    read -p "Ingrese el nombre del archivo a mostrar: " filename
    if [ -z "$filename" ]; then
        echo "Nombre de archivo no puede estar vacío."
    elif [ ! -f "$filename" ]; then
        echo "El archivo '$filename' no existe."
    else
        echo "Contenido de '$filename':"
        cat "$filename"
    fi
    echo
    read -p "Presione Enter para continuar..."
}

# Main loop
while true; do
    show_menu
    read option
    case $option in
        1) list_dir ;;
        2) show_pwd ;;
        3) show_date ;;
        4) show_disk_usage ;;
        5) show_mem_usage ;;
        6) show_users ;;
        7) create_dir ;;
        8) delete_dir ;;
        9) copy_file ;;
        10) move_file ;;
        11) show_file_content ;;
        12) 
            echo "Saliendo del programa..."
            exit 0
            ;;
        *) 
            echo "Opción no válida. Intente nuevamente."
            read -p "Presione Enter para continuar..."
            ;;
    esac
done