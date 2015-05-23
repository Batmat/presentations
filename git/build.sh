echo "Generation presentation"
docker run -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 

