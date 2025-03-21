#!/bin/bash

is_prime() {
    local num=$1
    if [[ $num -le 1 ]]; then
        echo "Число не является простым"
        return
    fi
    if [[ $num -eq 2 ]]; then
        echo "Число является простым"
        return
    fi
    for ((i = 2; i * i <= num; i++)); do
        if ((num % i == 0)); then
            echo "Число не является простым"
            return
        fi
    done
    echo "Число является простым"
}

read -p "Введите число: " number
is_prime "$number"

