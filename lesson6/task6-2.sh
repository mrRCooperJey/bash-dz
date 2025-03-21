multiply() {

for i in {1..10}; do
	echo "Вывод умножения $1 на $i = $(( $1 * $i ))"
done
}

multiply $1
