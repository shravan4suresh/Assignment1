#!/usr/bin bash
if [[  -f ./README.md ]]
   then
	rm README.md
fi
touch README.md
echo "GUESSING GAME " >> README.md
date >> README.md
cat guessinggame.sh | wc -l >> README.md
