#!/bin/bash

set -eu
set -o pipefail

DIST=_dist
rm -rf $DIST && mkdir -p $DIST
echo "Prez generation"
docker run --rm -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mv -f prez.html $DIST

echo "Copying resources"
cp -R resources _dist

echo "Generating labs with correction"
for file in labs/lab-correction*.adoc; do
	labWithoutCorrection=${file/lab-correction/lab} 
	cp $file $labWithoutCorrection
	sed -r -i '/[\*]{4}/,/[\*]{4}/d' $labWithoutCorrection
	sed -i 's/\.Correction$//g' $labWithoutCorrection
done
for lab in `ls labs/*.adoc`; do
	echo "Generating html of $lab ..."
	docker run --rm -e PREZ=$lab -v `pwd`:/documents batmat/asciidoctor-prez 
done
mkdir -p $DIST/labs
mv -f labs/*.html $DIST/labs

rm labs/lab-[0-9]-*

echo "Manually change resources paths"
cp -R .deck.js $DIST/resources/.deck.js
sed -i 's/\.\.\/\.deck\.js/resources\/.deck.js/g' $DIST/prez.html
sed -i 's/http:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/highlight\.js\/7\.3\/styles\/default\.min\.css/resources\/highlight.js.default.min.css/g' $DIST/prez.html
sed -i 's/http:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/highlight\.js\/7\.3\/highlight\.min\.js/resources\/highlight.min.js/g' $DIST/prez.html

echo "Generation ended. Please watch `pwd`/$DIST or browsing locally file:///`pwd`/$DIST/"
