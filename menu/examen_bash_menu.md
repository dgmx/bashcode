# Examen de Bash: Programa Menú de Comandos Básicos

## Enunciado

Desarrolle un script de Bash que presente un menú interactivo para ejecutar comandos básicos de Linux. El programa debe cumplir con los siguientes requisitos:

### Funcionalidad principal
- Mostrar un menú de opciones que se repita indefinidamente hasta que el usuario seleccione la opción de salir.
- Cada opción del menú debe estar implementada como una función separada.
- Utilizar la estructura `case` para la selección de opciones.
- Limpiar la pantalla y volver a mostrar el menú después de cada operación (excepto al salir).

### Opciones requeridas (mínimo 11 además de salir)
1. Listar contenido del directorio actual (con detalles)
2. Mostrar directorio actual 
3. Mostrar fecha y hora actual
4. Mostrar uso de disco 
5. Mostrar uso de memoria 
6. Mostrar usuarios conectados 
7. Crear un directorio (solicitando nombre al usuario)
8. Eliminar un directorio (solicitando nombre al usuario)
9. Copiar un archivo (solicitando origen y destino)
10. Mover o renombrar un archivo (solicitando origen y destino)
11. Mostrar contenido de un archivo (solicitando nombre)
12. Salir del programa

### Requisitos adicionales
- El script debe comenzar con el shebang adecuado para Bash.
- Debe ser ejecutable (`chmod +x`).
- Manejar errores básicos (por ejemplo, intentar eliminar un directorio que no existe o no está vacío, copiar un archivo que no existe, etc.).
- Utilizar `read` para obtener entrada del usuario cuando sea necesario.
- Mensajes claros y amigables para el usuario.

### Entregable
Un único archivo de script Bash (por ejemplo, `menu_comandos.sh`) que implemente todas las funcionalidades descritas.

### Nota para el docente
Este ejercicio evalúa:
- Estructuras de control (`while`, `case`)
- Definición y uso de funciones
- Manejo de entrada/salida
- Comandos básicos de Linux
- Buenas prácticas de scripting (limpieza de pantalla, manejo de errores, mensajes claros)

**No se proporcionará código de ejemplo. Los estudiantes deben desarrollar la solución por completo.**