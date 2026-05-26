# Relación de ejercicios de Shell Script por categorias

## 1. Entrada Salida

### Ejercicio 1. Suma de 2 numeros introducidos por teclado

```bash
#!/usr/local/bin/bash
# Add two numeric value
echo -n Introduce numero 1: 
read num1
read -p "Introduce numero 2: " num2
sum=$(( $num1 + $num2 ))
#Print the result
echo $sum

```

### Ejercicio 2. Cuenta las letras de una palabra, convierte a mayuscula y minuscula


```bash
#!/usr/local/bin/bash
read -p "Introduce texto: " texto

echo "Longitud: ${#texto}"
echo "Mayúsculas: ${texto^^}"
echo "Minúsculas: ${texto,,}"
```

### Ejercicio 3. Pide 2 números y realiza operaciones básicas

```bash
#!/usr/local/bin/bash
read -p "Número 1: " a
read -p "Número 2: " b

suma=$((a+b)) # Almacenamos la suma en una variable
echo "Suma: $suma"
echo "Resta: $((a-b))"
echo "Multiplicación: $((a*b))"
echo "División: $((a/b))"
```

### Ejercicio 4. Pasamos el operador a la expresión 

```bash
#!/usr/local/bin/bash

echo -n Introduce un valor:
read v1

read -p "Introduce operador +-*/ :" operador
read -p "Introduce otro valor: " v2

resultado=$((v1 $operador v2)) #

echo Resultado = $resultado
```

### Ejercicio 5. Realiza un script que limpie la pantalla e imprima el mensaje "Hola a todos"

```bash
#!/usr/local/bin/bash

clear
echo "Hola a todos"
```

## 2. Argumentos

### Ejercicio 6. Programa que recibe uno o varios argumentos, devuelve el numero de argumentos y saluda imprimiendo todos los argumentos. Si no recibe niguno devolverá un error

```bash
#!/usr/local/bin/bash
echo "número de parámetros = $#"
# si número de parámetros menor o igual que 0
if [ $# -le 0 ]; then
echo "Error. Hay que introducir al menos un parámetro."
exit 1
fi
echo "Hola $@!"
```

### Ejercicio 7. Programa que suma 2 numeros recibidos como argumentos, si no se reciben 2 argumentos devolverá un error-.






## Condicionales

### Programa que comprueba si un número pasado como argumento es par o impar

```bash
#!/usr/local/bin/bash

function ayuda() {
    echo "Programa que verifica si un número es par"
    echo "Uso: $0 <numero>"
}

if [ $# -eq 0 ]; then
  echo "Hay que introducir al menos un parámetro."
  ayuda
  exit 1
fi

num=$1
if ((num % 2 ==0)); then
   echo "$1 PAR"
else
   echo "$1 IMPAR"
fi
```



**Nota**:   
La bash utilizada para estos scripts es:
```bash
GNU bash, versión 5.3.9(1)-release (x86_64-apple-darwin23.6.0)
```

Puedes instalarla con:   
```bash
brew install bash
```
Esta shell de bash se encuentra en la ruta:  
`/usr/local/bin/bash`

Para eliminar la obsoleta que trae MacOS, borra la linea 
`/bin/bash` del archivo `/etc/shells` y coloca el siguiente _shebang_ en tus scripts:

`#!/usr/local/bin/bash`


