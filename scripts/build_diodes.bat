#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\diodes\*.*
del Z:\footprint\diodes\.*
rmdir Z:\footprint\diodes\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\diodes.csv
popd
