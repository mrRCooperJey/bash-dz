if [[ $1 -gt 0 || $1 -eq 0 ]]; then
	echo "Заданное число $1 больше или равно 0"
elif [[ $1 -lt 0  ]]; then
	echo "Заданное число отрицательное, попробуйте снова"
fi
