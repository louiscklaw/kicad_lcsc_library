#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_amplifiers\*.*
del Z:\footprint\lcsc_amplifiers\.*
rmdir Z:\footprint\lcsc_amplifiers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\amplifiers.csv
popd
