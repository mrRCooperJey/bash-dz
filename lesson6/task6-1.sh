checknum() {

read -p "Введите число: "  num

if ! [[ "$num" =~ ^-?[0-9]+$  ]]; then
	echo "Вы ввели не число"
	return
fi

if [[ $num -gt 0 ]]; then
	echo "Указанное число больше 0"
else 
	echo "Указанное число 0 или отрицательное"
fi

}

checknum
