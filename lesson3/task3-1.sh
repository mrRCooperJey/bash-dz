read -p "Введите первое число: " num1
read -p "Введите второе число: " num2

res1=$(($num1/$num2))
res2=$(($num1 % $num2))
echo  "Частное от деления $res1, остаток - $res2"
