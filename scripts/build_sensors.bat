#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_sensors\*.*
del Z:\footprint\lcsc_sensors\.*
rmdir Z:\footprint\lcsc_sensors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\sensors.csv
popd
