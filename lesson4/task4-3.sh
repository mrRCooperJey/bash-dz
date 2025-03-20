arr=1

while [[ $arr -le 10  ]]; do
	echo $((arr * 3))
	arr=$((arr + 1))
done
