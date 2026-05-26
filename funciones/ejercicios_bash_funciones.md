# Ejercicios de Bash con Funciones y Parámetros

## Nivel: Básico

### Ejercicio 1: Saludo personalizado
Crea una función que reciba un nombre como parámetro y muestre un saludo personalizado.

```bash
#!/bin/bash

saludar() {
    local nombre="$1"
    echo "Hola, $nombre! Bienvenido a bash."
}

saludar "Carlos"
```

---

### Ejercicio 2: Calculadora simple
Crea una función que reciba dos números y sume ambos.

```bash
#!/bin/bash

sumar() {
    local a=$1
    local b=$2
    echo $(($a + $b))
}

resultado=$(sumar 5 3)
echo "5 + 3 = $resultado"
```

---

### Ejercicio 3: Verificar número par
Crea una función que reciba un número y determine si es par o impar.

```bash
#!/bin/bash

es_par() {
    local num=$1
    if ((num % 2 == 0)); then
        echo "par"
    else
        echo "impar"
    fi
}

es_par 4
es_par 7
```

---

## Nivel: Intermedio

### Ejercicio 4: Calculadora con operaciones
Crea una calculadora con funciones para sumar, restar, multiplicar y dividir.

```bash
#!/bin/bash

sumar() { echo $(($1 + $2)); }
restar() { echo $(($1 - $2)); }
multiplicar() { echo $(($1 * $2)); }
dividir() { 
    if [ $2 -eq 0 ]; then
        echo "Error: división por cero"
    else
        echo $(($1 / $2))
    fi
}

operacion=$1
a=$2
b=$3

case $operacion in
    suma) sumar $a $b ;;
    resta) restar $a $b ;;
    multiplicar) multiplicar $a $b ;;
    dividir) dividir $a $b ;;
esac
```

---

### Ejercicio 5: Contador de palabras
Crea una función que reciba una cadena y cuenta las palabras.

```bash
#!/bin/bash

contar_palabras() {
    local texto="$1"
    local count=$(echo "$texto" | wc -w)
    echo "$count"
}

contar_palabras "uno dos tres cuatro"
```

---

### Ejercicio 6: Validación de email
Crea una función que valide si un email tiene formato correcto.

```bash
#!/bin/bash

validar_email() {
    local email="$1"
    if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo "Válido"
    else
        echo "Inválido"
    fi
}

validar_email "usuario@ejemplo.com"
validar_email "correo-invalido"
```

---

### Ejercicio 7: Conversor de temperatura
Crea funciones para convertir entre Celsius y Fahrenheit.

```bash
#!/bin/bash

celsius_a_fahrenheit() {
    local c=$1
    local f=$((c * 9 / 5 + 32))
    echo "$f"
}

fahrenheit_a_celsius() {
    local f=$1
    local c=$((f - 32) * 5 / 9)
    echo "$c"
}

celsius_a_fahrenheit 100
fahrenheit_a_celsius 212
```

---

## Nivel: Avanzado

### Ejercicio 8: Gestión de archivos
Crea funciones para listar, buscar y contar archivos por extensión.

```bash
#!/bin/bash

listar_archivos() {
    local dir="$1"
    ls -1 "$dir"
}

buscar_extension() {
    local dir="$1"
    local ext="$2"
    find "$dir" -name "*.$ext"
}

contar_extension() {
    local dir="$1"
    local ext="$2"
    local count=$(find "$dir" -name "*.$ext" | wc -l)
    echo "$count"
}

listar_archivos "/tmp"
contar_extension "/tmp" "txt"
```

---

### Ejercicio 9: Procesador de argumentos
Crea una función que procese múltiples argumentos con opciones.

```bash
#!/bin/bash

procesar_opciones() {
    local mensaje=""
    local verbose=0
    
    while [[ $# -gt 0 ]]; do
        case $1 in
            -m|--mensaje)
                mensaje="$2"
                shift 2
                ;;
            -v|--verbose)
                verbose=1
                shift
                ;;
            *)
                shift
                ;;
        esac
    done
    
    if [ $verbose -eq 1 ]; then
        echo "Verbose: $mensaje"
    else
        echo "$mensaje"
    fi
}

procesar_opciones -m "Hola mundo" -v
```

---

### Ejercicio 10: Calculadora con menú
Crea un menú interactivo con múltiples funciones y manejo de errores.

```bash
#!/bin/bash

calculadora() {
    local op=$1
    local a=$2
    local b=$3
    
    case $op in
        suma)
            echo $(($a + $b)) ;;
        resta)
            echo $(($a - $b)) ;;
       -multiplicar)
            echo $(($a * $b)) ;;
        dividir)
            if [ $b -eq 0 ]; then
                return 1
            fi
            echo $(($a / $b)) ;;
        potencia)
            echo $(($a ** $b)) ;;
        *)
            echo "Operación inválida"
            return 1
            ;;
    esac
}

resultado=$(calculadora "suma" 10 5) && echo "Resultado: $resultado"
resultado=$(calculadora "potencia" 2 8) && echo "Resultado: $resultado"
resultado=$(calculadora "dividir" 10 0) || echo "Error en operación"
```

---

## Soluciones

Las soluciones están en los comentarios de cada ejercicio. Prueba ejecutando los scripts y modifica los valores de los parámetros para practicar.