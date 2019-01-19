#!/usr/bin/env bash

PUBLISHER=$1
EXT_NAME=$2
VERSION=$3

OLD_URL=https://$PUBLISHER.gallery.vsassets.io/_apis/public/gallery/publisher/$PUBLISHER/extension/$EXT_NAME/$VERSION/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage

URL=https://marketplace.visualstudio.com/_apis/public/gallery/publishers/$PUBLISHER/vsextensions/$EXT_NAME/$VERSION/vspackage

curl -L "$URL" | funzip > ${PUBLISHER}_${EXT_NAME}_${VERSION}.vsix
