#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_filters\*.*
del /s /q /f Z:\footprint\lcsc_filters\.*
rmdir /s /q Z:\footprint\lcsc_filters\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\filters.csv
popd
