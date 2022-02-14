#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_diodes\*.*
del /s /q /f Z:\footprint\lcsc_diodes\.*
rmdir /s /q Z:\footprint\lcsc_diodes\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\diodes.csv
popd
