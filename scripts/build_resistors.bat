#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_resistors\*.*
del /s /q /f Z:\footprint\lcsc_resistors\.*
rmdir /s /q Z:\footprint\lcsc_resistors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\resistors.csv
popd
