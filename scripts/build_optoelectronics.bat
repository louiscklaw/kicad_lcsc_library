#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_optoelectronics\*.*
del Z:\footprint\lcsc_optoelectronics\.*
rmdir Z:\footprint\lcsc_optoelectronics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\optoelectronics.csv
popd
