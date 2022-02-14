#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\fuses\*.*
del Z:\footprint\fuses\.*
rmdir Z:\footprint\fuses\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\fuses.csv
popd
