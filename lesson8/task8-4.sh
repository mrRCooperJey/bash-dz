days_of_week=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")

wednesday_index=2
friday_index=4

days_of_week=(
  "${days_of_week[@]:0:wednesday_index}"
  "${days_of_week[friday_index]}" 
  "${days_of_week[@]:wednesday_index+1:friday_index-wednesday_index-1}"
  "${days_of_week[wednesday_index]}"  
  "${days_of_week[@]:friday_index+1}" 
)

for day in "${days_of_week[@]}"; do
  echo "$day"
done

