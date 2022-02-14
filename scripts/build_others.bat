#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_others\*.*
del Z:\footprint\lcsc_others\.*
rmdir Z:\footprint\lcsc_others\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\others.csv
popd
