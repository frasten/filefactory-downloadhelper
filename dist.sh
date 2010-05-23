#!/bin/bash
VER=`git describe --tags`
DISTDIR=filefactory-downloadhelper-$VER
mkdir -p $DISTDIR
git archive HEAD | tar -x -C $DISTDIR
rm -f $DISTDIR/.gitignore $DISTDIR/dist.sh
zip -r $DISTDIR.zip $DISTDIR
rm -rf $DISTDIR
echo 
echo "-----------------------------------------------------------------"
echo "$DISTDIR.zip file created. Now upload it to:"
echo "https://chrome.google.com/extensions/developer/edit/bkopjcddgkdkgdmilloigbbelkfnpppk"
echo
