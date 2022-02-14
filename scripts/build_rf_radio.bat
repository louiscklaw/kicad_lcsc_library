#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_rf_radio\*.*
del /s /q /f Z:\footprint\lcsc_rf_radio\.*
rmdir /s /q Z:\footprint\lcsc_rf_radio\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\rf_radio.csv
popd
