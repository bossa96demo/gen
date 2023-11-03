# 1. replacing semicolons with '\n' because it will be easier to work with
# 2. leaving only unique blocks
cat 25K.txt | tr ';' '\n' \
	| sort | uniq > last.txt

vowel="[aeiou]"
consonant="[bcdfghjklmnpqrstvwxyz]"
sed -n "/^$consonant$vowel$/p" last.txt > simple.txt
sed -n "/^$consonant$consonant$vowel$/p" last.txt >> simple.txt
# too much CVC blocks, I prefer to remove it
#sed -n "/^$consonant$vowel$consonant$/p" last.txt >> simple.txt
sed -n "/^$vowel$consonant$/p" last.txt >> simple.txt
sed -n "/^$vowel$consonant$consonant$/p" last.txt >> simple.txt
sed -n "/^$vowel$consonant$vowel$/p" last.txt >> simple.txt

# removing extra file
rm last.txt
