#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\optoelectronics\*.*
del Z:\footprint\optoelectronics\.*
rmdir Z:\footprint\optoelectronics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\optoelectronics.csv
popd
