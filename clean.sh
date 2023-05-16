# replacing semicolons with '\n' because it will be easier to work with
cat 25K.txt | tr ';' '\n' \
# $ cat out.txt | sort | wc -l
# 62073
# $ cat out.txt | sort | uniq | wc -l
# 7436
	| sort | uniq > last.txt

vowel="[aeiou]"
consonant="[bcdfghjklmnpqrstvwxyz]"
sed -n "/^$consonant$vowel$/p" last.txt > simple.txt
sed -n "/^$consonant$consonant$vowel$/p" last.txt >> simple.txt
#sed -n "/^$consonant$vowel$consonant$p" last.txt >> simple.txt

# removing all spaces from table
cat cn.txt | tr "\t" "\n" \
# removing all void '\n'-s and other stuff
       	| awk "length > 1" \
# check if syllable starts with vowel, if so it is not real chinese pinyin syllable
	       	| awk '/^[^aeiouAEIOU]/' \
# remove ü beacuse i don't like it 
			| grep -v 'ü' > ch.txt
