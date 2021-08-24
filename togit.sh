#!/bin/bash
REPO=MonokaiSGQ
P=`pwd`

dirty=`svn status -q`
if [ -n "$dirty" ] ; then
  echo "project is not completely checked into SVN"
  exit 127
fi

DIR=/tmp/$REPO
rm -rf $DIR
mkdir -p $DIR
cd $DIR
git clone git@github.com:/marketideas/$REPO

#cp -R $P $DIR
cd $DIR/$REPO
git checkout sgq_work_branch
cp -R $P $DIR
rm -rf .svn
git status

git add *
git status
git commit -m "automated push from svn"
git push
git status

