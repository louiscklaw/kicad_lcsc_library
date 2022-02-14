#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_fuses\*.*
del /s /q /f Z:\footprint\lcsc_fuses\.*
rmdir /s /q Z:\footprint\lcsc_fuses\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\fuses.csv
popd
