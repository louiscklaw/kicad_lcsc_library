#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_diodes\*.*
del Z:\footprint\lcsc_diodes\.*
rmdir Z:\footprint\lcsc_diodes\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\diodes.csv
popd
