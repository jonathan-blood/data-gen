#!/bin/sh
for ID in {105300001..105300009}
do
	echo $ID
	cp doc.json $ID.json
	sed -i "" "s/DOC_ID/$ID/g" $ID.json

	NAME=$(shuf -n 1 names.txt)
	sed -i "" "s/NAME/$NAME/g" $ID.json

	ADDRESS=$(shuf -n 1 addresses.txt)
	sed -i "" "s/ADDRESS/$ADDRESS/g" $ID.json

	NATIONALITY=$(shuf -n 1 nationalities.txt)
	sed -i "" "s/NATIONALITY/$NATIONALITY/g" $ID.json

	OCCUPATION=$(shuf -n 1 occupations.txt)
	sed -i "" "s/OCCUPATION/$OCCUPATION/g" $ID.json

	mv $ID.json docs
done
