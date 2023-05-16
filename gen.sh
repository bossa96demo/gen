#!/bin/bash

# get database from user
if [ $# -gt 0 ]; then
	file=$1
else
	read -p "file that contains syllable(ex. simple.txt): " file
fi

# function to get random nickname
gen_word(){

	# define number of syllables in file
	max=$(cat $file | wc -l)

	# get random number from 1 to max number of syllables
	rand0=$(( $RANDOM % $max + 1 ))
	rand1=$(( $RANDOM % $max + 1 ))
	rand2=$(( $RANDOM % $max + 1 ))
	rand3=$(( $RANDOM % $max + 1 ))
	# rand3=$(( $(od -An -N2 -i /dev/urandom | tr -d ' ') % $max + 1 ))
	# that will how be $RANDOM replaced in fish
	
	# get random syllable from database
	ans0=$(sed -n "$rand0 p" $file)
	ans1=$(sed -n "$rand1 p" $file)
	ans2=$(sed -n "$rand2 p" $file)
	ans3=$(sed -n "$rand3 p" $file)
	
	# join all these syllables together to make a nickname
	echo -n $ans0-$ans1-$ans2-$ans3
}

# generate 4 so user will not need to run this again
echo "Here are 4 probable nicknames: "
echo "$(gen_word) $(gen_word)" 
echo "$(gen_word) $(gen_word)" 
echo "$(gen_word) $(gen_word)" 
echo "$(gen_word) $(gen_word)" 
