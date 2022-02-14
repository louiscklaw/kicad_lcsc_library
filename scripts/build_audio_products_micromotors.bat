#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_audio_products_micromotors\*.*
del /s /q /f Z:\footprint\lcsc_audio_products_micromotors\.*
rmdir /s /q Z:\footprint\lcsc_audio_products_micromotors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\audio_products_micromotors.csv
popd
