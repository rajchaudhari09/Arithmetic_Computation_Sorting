#!/bin/bash -x

#!Reading Values From User
echo "Welcome to Arithmetic Operations And Sorting "
read -p "Enter Three value for a , b , c : " a b c
echo "a=$a b=$b c=$c"

#!declaring Dictionary
declare -A dict

#!Calcuting Results Of Arithmetic Operation
dict[operation1]=$((a + b * c))
dict[operation2]=$((a * b + c))
#! Used scale=2 for display .2 floating value
dict[operation3]=$(echo "scale=2; $c + $a / $b" | bc )
dict[operation4]=$((a % b + c))

#!Printing Operation and Result
echo "$a + $b * $c = ${dict[operation1]}"
echo "$a * $b + $c = ${dict[operation2]}"
echo "$c + $a / $b = ${dict[operation3]}"
echo "$a % $b + $c = ${dict[operation4]}"

#!echo "${dict[@]}"
