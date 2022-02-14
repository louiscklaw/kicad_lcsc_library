#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_audio_products_micromotors\*.*
del Z:\footprint\lcsc_audio_products_micromotors\.*
rmdir Z:\footprint\lcsc_audio_products_micromotors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\audio_products_micromotors.csv
popd
