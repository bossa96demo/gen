#!/bin/bash

# get database from user
if [ $# -gt 0 ]; then
	file=$1
else
	read -p "File with blocks (ex. simple.txt): " file
	read -p "How much blocks do you want? (ex. 4): " num
fi

# function to get random nickname
gen_word(){

	# define number of blocks in file
	max=$(cat $file | wc -l)

	declare -a rnd_nums
	declare -a answers
	for i in $(seq 1 $num); do
		#echo $i
		# get random number from 1 to max number
		rnd_nums[$i]=$(($RANDOM % $max + 1)) 
		#echo "${rnd_nums[$i]}"
		
		# get random syllable from database
		answers[$i]=$(sed -n "${rnd_nums[$i]} p" $file)
		# write all blocks together 1 by 1 
		echo -n "${answers[$i]}"
	done
	# rand0=$(( $(od -An -N2 -i /dev/urandom | tr -d ' ') % $max + 1 ))
	# that will how be $RANDOM replaced in fish
}

# generate some so user will not need to run script again
n=7
echo "Here are $n probable nicknames: "
for i in $(seq 1 $n); do 
	echo "$(gen_word) $(gen_word)" 
done
