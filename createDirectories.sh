#!/bin/bash
directory_name=$1
start_num=$2
end_num=$3

# we have to be sure we have the 2 argument
if [[ "$directory_name" == "" ]]
then 
	echo "Please provide the name of the directory"
	exit 1
fi

if ! [[ "$start_num" =~ ^[0-9]+$ ]]
then
        echo "Start index for the directory must be an integer"
        exit 1
fi

if ! [[ "$end_num" =~ ^[0-9]+$ ]]
then
        echo "End index for the directory must be an integer"
        exit 1
fi

for (( i = $start_num; i <= $end_num; i++ ))
do
	mkdir $directory_name$i
done

echo "All done"
