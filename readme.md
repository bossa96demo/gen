# Generate Nickname

### General Use
- `./clean.sh` - this will parse databases and will give you a file `simple.txt`
- `./gen.sh` - this will give you n nicknames that you can use later
### Databases of Syllables
1. [25K.txt](https://github.com/gautesolheim/25000-syllabified-words-list)
2. [pinyin](https://yoyochinese.com/chinese-learning-tools/Mandarin-Chinese-pronunciation-lesson/pinyin-chart-table) it is a pinyin table
### Parsed Files
- `chinese.txt` is a dataset of some pinyin syllables
- `simple.txt` is a dataset of some english syllables
### Output 
- On the output you will get n nicknames, they will consist of "name" and "surname".
- They are chosen randomly, using `$RANDOM` from shell
### Your Own Syllables File
- You can add your own database
- Databases must have all syllables separated with new line
