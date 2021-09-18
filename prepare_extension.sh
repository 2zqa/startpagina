#!/bin/sh
rm -rf out/*
mkdir out

# Firefox
mv manifest_firefox.json manifest.json
zip -r out/startpagina_firefox.zip * -x out/ *.git* README.md manifest_chromium.json prepare_extension.sh prepare_extension.ps1
mv manifest.json manifest_firefox.json

# Chromium
mkdir out/startpagina_chromium &&
rsync -av \
--exclude={out,*.git*,README.md,manifest_firefox.json,prepare_extension.sh} \
./ out/startpagina_chromium &&
mv out/startpagina_chromium/manifest_chromium.json out/startpagina_chromium/manifest.json
