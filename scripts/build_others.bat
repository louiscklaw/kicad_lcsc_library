#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_others\*.*
del /s /q /f Z:\footprint\lcsc_others\.*
rmdir /s /q Z:\footprint\lcsc_others\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\others.csv
popd
