#!/bin/bash

# linuxdeployqt uses this for naming the file
export VERSION=$(git describe --tags)

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
    macdeployqt smarthhc.app -dmg -verbose=2
#   mv smarthhc.dmg SmartHHC-$VERSION.dmg
    export DEPLOYFILE=smarthhc.dmg
else
    wget -c -nv "https://github.com/probonopd/linuxdeployqt/releases/download/continuous/linuxdeployqt-continuous-x86_64.AppImage"
    chmod a+x linuxdeployqt-continuous-x86_64.AppImage
    ./linuxdeployqt-continuous-x86_64.AppImage SmartHHC/usr/share/applications/*.desktop -appimage -no-plugins -no-strip -verbose=2
    export DEPLOYFILE=SmartHHC-$VERSION-x86_64.AppImage
fi
