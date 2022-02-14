#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\sensors\*.*
del Z:\footprint\sensors\.*
rmdir Z:\footprint\sensors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\sensors.csv
popd
