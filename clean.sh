# 1. replacing semicolons with '\n' because it will be easier to work with
# 2. leaving only unique syllables
cat 25K.txt | tr ';' '\n' \
	| sort | uniq > last.txt

vowel="[aeiou]"
consonant="[bcdfghjklmnpqrstvwxyz]"
sed -n "/^$consonant$vowel$/p" last.txt > simple.txt
sed -n "/^$consonant$consonant$vowel$/p" last.txt >> simple.txt

# removing extra file
rm last.txt

# 1. removing all spaces from table
# 2. removing all void '\n'-s and other stuff
# 3. check if syllable starts with vowel, if so it is not real chinese pinyin syllable
# 4. remove syllables containing ü because i don't like it 
cat cn.txt | tr "\t" "\n" \
       	| awk "length > 1" \
	       	| awk '/^[^aeiouAEIOU]/' \
			| grep -v 'ü' > ch.txt
