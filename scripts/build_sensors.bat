#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_sensors\*.*
del /s /q /f Z:\footprint\lcsc_sensors\.*
rmdir /s /q Z:\footprint\lcsc_sensors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\sensors.csv
popd
