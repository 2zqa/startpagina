#!/bin/sh
rm -rf out/*
mkdir out

# Firefox
mv manifest_firefox.json manifest.json
zip -r out/Startpagina_firefox.zip * -x out/ *.git* README.md manifest_chromium.json prepare_extension.sh
mv manifest.json manifest_firefox.json

# Chromium
mkdir out/Startpagina_chromium &&
rsync -av \
--exclude={out,*.git*,README.md,manifest_firefox.json,prepare_extension.sh} \
./ out/Startpagina_chromium &&
mv out/Startpagina_chromium/manifest_chromium.json out/Startpagina_chromium/manifest.json
