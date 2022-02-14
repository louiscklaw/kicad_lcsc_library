#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_capacitors\*.*
del Z:\footprint\lcsc_capacitors\.*
rmdir Z:\footprint\lcsc_capacitors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\capacitors.csv
popd
