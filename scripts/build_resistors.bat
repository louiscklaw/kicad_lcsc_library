#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_resistors\*.*
del Z:\footprint\lcsc_resistors\.*
rmdir Z:\footprint\lcsc_resistors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\resistors.csv
popd
