#!/bin/bash
echo "This program compares TWO INTEGERS. Strings will not be allowed"

read -r -p "Enter a first number - num1:" num1
read -r -p "Enter second number - num2:" num2


if ! [[ "$num1" =~ ^[0-9]+$ || "$num1" =~ ^[-][0-9]+$ ]]
then
	echo "First input must be only integers"
	exit 1
fi

if ! [[ "$num2" =~ ^[0-9]+$ || "$num2" =~ ^[-][0-9]+$ ]]
then 
	echo "Second number must be only integers"
	exit 1
fi

# At this point we have gotten our 2 argument

if [ $num1 -eq $num2 ]
then
	echo "$num1 equals $num2"
elif [ $num1 -gt $num2 ]
then
	echo "$num1 is greater than $num2"
else
	echo "$num2 is greater than $num1"
fi
