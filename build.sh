DIST=_dist
mkdir -p $DIST
echo "Prez generation"
docker run --rm -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mv -f prez.html $DIST

echo "Lab generation"
docker run --rm -e PREZ=lab/lab.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
docker run --rm -e PREZ=lab/index.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
docker run --rm -e PREZ=lab/prerequisites.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mkdir -p $DIST/lab
mv -f lab/*.html $DIST/lab
cp -R ressources _dist

echo "Generation ended. Please watch `pwd`/$DIST or browsing locally file:///`pwd`/$DIST/"