DIST=_dist
rm -rf $DIST && mkdir -p $DIST
echo "Prez generation"
docker run --rm -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mv -f prez.html $DIST

echo "Labs generation"
for lab in `ls labs/*.adoc`; do
	echo "Generating html of $lab ..."
	docker run --rm -e PREZ=$lab -v `pwd`:/documents batmat/asciidoctor-prez 
done
mkdir -p $DIST/labs
mv -f labs/*.html $DIST/labs

cp -R resources _dist

echo "Generation ended. Please watch `pwd`/$DIST or browsing locally file:///`pwd`/$DIST/"
