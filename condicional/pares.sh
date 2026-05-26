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


