#!/bin/bash

APPLETDIR=/usr/lib/budgie-desktop/plugins

ICONDIR=/usr/share/pixmaps

PROJECT_NAME='org.budgie-desktop.applet.budgierestart'

echo "Removing Budgie Restart Applet....."

mkdir -p $APPLETDIR/$PROJECT_NAME

for file in $APPLETDIR/$PROJECT_NAME/*;do
    echo "rm $file"
    # rm $APPLETDIR/$PROJECT_NAME/$file
done

sudo rm -rf $APPLETDIR/$PROJECT_NAME

for file in icons/*; do
    echo "rm $ICONDIR/$file"
    sudo rm $ICONDIR/$file
done

echo "Finished Removing Applet. Restart or Re-login to find the applet in Budgie."