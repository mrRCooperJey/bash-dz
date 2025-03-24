days_of_week=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")

read -p "Enter your number: " num

if [[ $num -lt 0 || $num -gt 7  ]]; then
	echo "eblan vel hyety"
fi

echo "${days_of_week[num - 1]}"
