# Generate Nickname

### General Use
- `./clean.sh` - this will parse databases and will give you 2 files: 
	1. `ch.txt` - database of chinese syllables
	2. `simple.txt` - database of simple syllables
- `./gen.sh` - this will give you 4 nicknames that you can use later
### Databases of Syllables
1. 25K.txt I got from https://github.com/gautesolheim/25000-syllabified-words-list
2. cn.txt I got from https://yoyochinese.com/chinese-learning-tools/Mandarin-Chinese-pronunciation-lesson/pinyin-chart-table
### Output 
- On the output you will get 4 nicknames, they will consist of "name" and "surname".
- They are chosen randomly, using `$RANDOM` from shell
### Your Own Syllables File
- You can add your own database
- Databases must have all syllables separated with new line
