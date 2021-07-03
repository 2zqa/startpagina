#!/bin/sh
rm -rf out/*
mkdir out

# Firefox
zip -r out/Startpagina_firefox.zip * -x out *.git* README.md prepare_extension.sh

# Chromium
mkdir out/Startpagina_chromium &&
rsync -av \
--exclude={out,*.git*,README.md,prepare_extension.sh} \
./ out/Startpagina_chromium

