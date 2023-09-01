#!/bin/bash

source ./color_constants.sh

printf "${RED}complete!${CB}\n"

s=20
for ((k = 0; k <= s ; k++))
do
    echo -n "[ "
    for ((i = 0 ; i <= k; i++)); do echo -n "###"; done
    for ((j = i ; j <= s ; j++)); do echo -n "   "; done
    v=$((k * 5))
    echo -n " ] "
    echo -n "$v %" $'\r'
    sleep 0.05
done
echo