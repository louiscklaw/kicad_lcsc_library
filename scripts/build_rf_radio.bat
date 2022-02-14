#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\rf_radio\*.*
del Z:\footprint\rf_radio\.*
rmdir Z:\footprint\rf_radio\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\rf_radio.csv
popd
