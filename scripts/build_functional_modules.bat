#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_functional_modules\*.*
del Z:\footprint\lcsc_functional_modules\.*
rmdir Z:\footprint\lcsc_functional_modules\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\functional_modules.csv
popd
