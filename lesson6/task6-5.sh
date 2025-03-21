#!/bin/bash

fibonacci() {
    local n=$1
    if [[ $n -le 0 ]]; then
        echo 0
    elif [[ $n -eq 1 ]]; then
        echo 1
    else
        echo $(( $(fibonacci $((n-1))) + $(fibonacci $((n-2))) ))
    fi
}

print_fibonacci_series() {
    local count=$1
    if [[ $count -le 3 ]]; then
        echo "Ошибка: введите число больше 3"
        return
    fi
    
    for ((i = 0; i < count; i++)); do
        echo -n "$(fibonacci $i)"
        if [[ $i -lt $((count - 1)) ]]; then
            echo -n ", "
        fi
    done
    echo
}

read -p "Введите количество членов последовательности Фибоначчи (больше 3): " num
print_fibonacci_series "$num"
