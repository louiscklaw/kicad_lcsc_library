#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_fuses\*.*
del Z:\footprint\lcsc_fuses\.*
rmdir Z:\footprint\lcsc_fuses\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\fuses.csv
popd
