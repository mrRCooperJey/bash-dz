read -p "Введите полную строку: " a
read -p "Введите подстроку: " b

if [[ -z "$a" || -z "$b"  ]]; then
	echo "Одна из строк или обе пустые"
	exit 1
fi

if [[ "$a" =~ "$b" ]]; then
	echo "Содержит"
else
	echo "Не содержит"
fi

