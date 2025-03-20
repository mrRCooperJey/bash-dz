read -p "Введите полную строку: " a
read -p "Введите подстроку: " b

if [[ $a =~ $b ]]; then
	echo "Содержит"
else
	echo "Не содержит"
fi

