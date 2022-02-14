#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_capacitors\*.*
del /s /q /f Z:\footprint\lcsc_capacitors\.*
rmdir /s /q Z:\footprint\lcsc_capacitors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\capacitors.csv
popd
