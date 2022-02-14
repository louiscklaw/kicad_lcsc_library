#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_amplifiers\*.*
del /s /q /f Z:\footprint\lcsc_amplifiers\.*
rmdir /s /q Z:\footprint\lcsc_amplifiers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\amplifiers.csv
popd
