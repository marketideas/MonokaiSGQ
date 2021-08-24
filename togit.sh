#!/bin/bash
REPO=MonokaiSGQ
P=`pwd`

DIR=/tmp/$REPO
rm -rf $DIR
mkdir -p $DIR
cd $DIR
git clone git@github.com:/marketideas/$REPO
cp -R $P $DIR
cd $DIR/$REPO
#git status
git add *
git status
git commit -m "automated push from svn"
git push
git status

