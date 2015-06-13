#!/bin/bash

set -eou pipefail

declare -A tipsMap

TIPS_DIR=tips
BUILD_OUTPUT_DIR=_dist
PREZ_FILE=prez.adoc
TIPS_OUTPUT=$BUILD_OUTPUT_DIR/tips.adoc
mkdir -p $BUILD_OUTPUT_DIR

TIP_COUNT=$( find $TIPS_DIR -name "*.adoc" -exec grep -e "^== " {} \; | wc -l )

echo "Note: $TIP_COUNT total tips found"

cp prez.adoc $BUILD_OUTPUT_DIR
rm -f $TIPS_OUTPUT

for adocFile in $( ls $TIPS_DIR/*.adoc )
do
   cat $adocFile | sed "s/^==\(.*\)$/== \[tip-count\]#({counter:tip}\/$TIP_COUNT)#\1/g" >> $TIPS_OUTPUT
   echo >> $TIPS_OUTPUT
   echo >> $TIPS_OUTPUT
done

echo "Copying all the images of $TIPS_DIR"
#TODO : check if no duplicate in naming (to prevent overwrite)

cp -R resources $BUILD_OUTPUT_DIR

find $TIPS_DIR -name "*.jpg" -or -name "*.png" -exec cp "{}" $BUILD_OUTPUT_DIR/resources \;

cd $BUILD_OUTPUT_DIR
echo "Prez generation"
docker run --rm -e PREZ=prez.adoc -v `pwd`:/documents batmat/asciidoctor-prez 

echo "Generation ended. Please watch `pwd`/prez.html or browse locally file:///`pwd`/prez.html"
