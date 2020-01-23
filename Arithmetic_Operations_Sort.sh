#!/bin/bash -x

#!Reading Values From User
echo "Welcome to Arithmetic Operations And Sorting "
read -p "Enter Three value for a , b , c : " a b c
echo "a=$a b=$b c=$c"

#!declaring Dictionary and arr
declare -A dict
declare -a arr

#!Calcuting Results Of Arithmetic Operation
function calculations() {
	dict[operation1]=$((a + b * c))
	dict[operation2]=$((a * b + c))
	#! Used scale=2 for display .2 floating value
	dict[operation3]=$(echo "scale=2; $c + $a / $b" | bc )
	dict[operation4]=$((a % b + c))
}

#!Storing Dictionary to Array
function dictToArray() {
	for((i=0;i<4;i++))
	do
		arr[i]=${dict[operation$((i+1))]}
	done
}

#!Printing Operation and Result
function display() {
	echo "$a + $b * $c = ${dict[operation1]}"
	echo "$a * $b + $c = ${dict[operation2]}"
	echo "$c + $a / $b = ${dict[operation3]}"
	echo "$a % $b + $c = ${dict[operation4]}"
}
function sort()
{
	len=${#arr[@]}

	for((i=0;i<len;i++))
	do
		for((j=i+1;j<=len;j++))
		do
			if [[ ${arr[i]%.*} -lt ${arr[j]%.*} ]]
			then
				temp=${arr[j]}
				arr[j]=${arr[i]}
				arr[i]=$temp
			fi
		done
	done

}

#!Calling Functions
calculations
display
dictToArray
#!All Dictionary And Array Element
#!echo "${dict[@]}"
echo "Elements in Array BeforeSort " ${arr[@]}
#!Calling Sort Function
sort
echo "Element in Array After Descending Sort " ${arr[@]}
