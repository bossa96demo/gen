cat 25K.txt | tr ';' '\n' > out.txt
cat out.txt | sort | uniq > last.txt
vowel="[aeiou]"
consonant="[bcdfghjklmnpqrstvwxyz]"
sed -n "/^$consonant$vowel$/p" last.txt > simple.txt
sed -n "/^$consonant$consonant$vowel$/p" last.txt >> simple.txt
#sed -n "/^$consonant$vowel$consonant$p" last.txt >> simple.txt


cat cn.txt | tr "\t" "\n" | awk "length > 1" | awk '/^[^aeiouAEIOU]/' | grep -v 'ü' > ch.txt
