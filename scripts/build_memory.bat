#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_memory\*.*
del /s /q /f Z:\footprint\lcsc_memory\.*
rmdir /s /q Z:\footprint\lcsc_memory\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\memory.csv
popd
