# Generate Nickname

### General Use
- `./clean.sh` - this will parse databases and will give you 2 files:
	1. `ch.txt`
	2. `simple.txt`
- `./gen.sh` - this will give you 4 nicknames that you can use later
### Databases of Syllables
1. [25K.txt](https://github.com/gautesolheim/25000-syllabified-words-list)
2. [cn.txt](https://yoyochinese.com/chinese-learning-tools/Mandarin-Chinese-pronunciation-lesson/pinyin-chart-table) it is a pinyin table
### Parsed Files
- `ch.txt` is a dataset of chinese syllables written in pinyin
- `simple.txt` is a dataset of syllables that ends with vowel and they are 2 and 3 letters long
### Output 
- On the output you will get 4 nicknames, they will consist of "name" and "surname".
- They are chosen randomly, using `$RANDOM` from shell
### Your Own Syllables File
- You can add your own database
- Databases must have all syllables separated with new line
