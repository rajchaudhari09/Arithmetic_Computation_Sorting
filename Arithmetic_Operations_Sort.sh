#!/bin/bash -x

echo "Welcome to Arithmetic Operations And Sorting "
read -p "Enter Three value for a , b , c" a b c
echo "a=$a b=$b c=$c"

#!Calcuting Results Of Arithmetic Operation
opration1=$((a + b * c))

#!Printing Operation and Result
echo "$a + $b * $c = $opration1"
