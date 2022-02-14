#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_optoelectronics\*.*
del /s /q /f Z:\footprint\lcsc_optoelectronics\.*
rmdir /s /q Z:\footprint\lcsc_optoelectronics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\optoelectronics.csv
popd
