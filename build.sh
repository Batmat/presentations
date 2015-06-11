DIST=_dist
rm -rf $DIST && mkdir -p $DIST
echo "Prez generation"
docker run --rm -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mv -f prez.html $DIST

echo "Copying resources"
time cp -R resources _dist

echo "Labs generation"
for lab in `ls labs/*.adoc`; do
	echo "Generating html of $lab ..."
	docker run --rm -e PREZ=$lab -v `pwd`:/documents batmat/asciidoctor-prez 
done
mkdir -p $DIST/labs
mv -f labs/*.html $DIST/labs

echo "Manually change resources paths"
cp -R .deck.js $DIST/resources/.deck.js
sed -i 's/\.\.\/\.deck\.js/resources\/.deck.js/g' $DIST/prez.html
sed -i 's/http:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/highlight\.js\/7\.3\/styles\/default\.min\.css/resources\/highlight.js.default.min.css/g' $DIST/prez.html
sed -i 's/http:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/highlight\.js\/7\.3\/highlight\.min\.js/resources\/highlight.min.js/g' $DIST/prez.html


echo "Generation ended. Please watch `pwd`/$DIST or browsing locally file:///`pwd`/$DIST/"
