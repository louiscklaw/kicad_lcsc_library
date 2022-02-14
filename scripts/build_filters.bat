#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_filters\*.*
del Z:\footprint\lcsc_filters\.*
rmdir Z:\footprint\lcsc_filters\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\filters.csv
popd
