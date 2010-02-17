#!/bin/bash
VER=`git describe --tags`
DISTDIR=filefactory-downloadhelper-$VER
mkdir -p $DISTDIR
git archive HEAD | tar -x -C $DISTDIR
rm -f $DISTDIR/.gitignore $DISTDIR/dist.sh
zip -r $DISTDIR $DISTDIR
rm -rf $DISTDIR
