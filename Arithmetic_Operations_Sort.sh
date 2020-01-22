#!/bin/bash -x

echo "Welcome to Arithmetic Operations And Sorting "
read -p "Enter Three value for a , b , c" a b c
echo "a=$a b=$b c=$c"

#!Calcuting Results Of Arithmetic Operation
operation1=$((a + b * c))
operation2=$((a * b + c))
#!Printing Operation and Result
echo "$a + $b * $c = $operation1"
echo "$a * $b + $c = $operation2"
