#!/bin/bash

fibonacci() {
    local n=$1
    if [[ $n -le 3 ]]; then
        echo "Ошибка: введите число больше 3"
        return
    fi
    
    local a=0
    local b=1
    echo -n "$a, $b"
    
    for ((i = 3; i <= n; i++)); do
        local sum=$((a + b))
        echo -n ", $sum"
        a=$b
        b=$sum
    done
    echo
}

read -p "Введите количество членов последовательности Фибоначчи (больше 3): " num
fibonacci "$num"

