#!/bin/sh

unzip demogit.zip
git init --bare remoterepo.git
fileUrl="file://`pwd`/remoterepo.git"
cd demogit
git remote add origin "$fileUrl"
git push -u origin master
