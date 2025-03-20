a=$1
b=$2
c=$3

s=$(echo "scale=2; ($a + $b + $c ) / 2" | bc -l)
area=$(echo "scale=1; sqrt($s * ($s - $a) * ($s - $b) * ($s - $c))" | bc -l)
echo $area
