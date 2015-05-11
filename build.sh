DIST=_dist
mkdir -p $DIST
echo "Prez generation"
docker run -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mv -f prez.html $DIST

echo "Lab generation"
docker run -e PREZ=lab/lab.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
docker run -e PREZ=lab/index.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
docker run -e PREZ=lab/prerequisites.adoc -v `pwd`:/documents batmat/asciidoctor-prez 
mkdir -p $DIST/lab
mv -f lab/*.html $DIST/lab

echo "Generation ended. Please watch `pwd`/$DIST or browsing locally file:///`pwd`/$DIST/"