#!/bin/bash
gen_word(){
	file="simple.txt"
	max=$(cat $file | wc -l)

	rand0=$(( $RANDOM % $max + 1 ))
	rand1=$(( $RANDOM % $max + 1 ))
	rand2=$(( $RANDOM % $max + 1 ))
	rand3=$(( $RANDOM % $max + 1 ))
	# rand3=$(( $(od -An -N2 -i /dev/urandom | tr -d ' ') % $max + 1 ))
	# that will how be $RANDOM replaced in fish
	
	ans0=$(sed -n "$rand0 p" $file)
	ans1=$(sed -n "$rand1 p" $file)
	ans2=$(sed -n "$rand2 p" $file)
	ans3=$(sed -n "$rand3 p" $file)
	
	echo -n $ans0-$ans1-$ans2-$ans3
}
echo "Here are 4 probable nicknames: "
echo "$(gen_word) $(gen_word)" 
echo "$(gen_word) $(gen_word)" 
echo "$(gen_word) $(gen_word)" 
echo "$(gen_word) $(gen_word)" 
