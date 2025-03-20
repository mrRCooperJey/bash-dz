if [[ $# -eq 0 || $# -gt 1 || $1 -le 0 ]]; then
	echo "Please send one non negative number"
elif (( ($1 % 2) == 0 ))  ; then
	echo "Number $1 is even"
else
	echo "Number $1 is odd"
fi
