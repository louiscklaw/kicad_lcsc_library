#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_rf_radio\*.*
del Z:\footprint\lcsc_rf_radio\.*
rmdir Z:\footprint\lcsc_rf_radio\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\rf_radio.csv
popd
