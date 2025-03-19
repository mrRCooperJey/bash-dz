echo "Имя скрипта: $0"

echo "Привет, какой сегодня день недели?"
read day
echo "Уже $day"

echo "Какое сегодня число?"
read date
echo "Не думал что $day будет $date числа"

current_date=$(date)
echo "Я считаю что сегодня $current_date"
