#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_transistors\*.*
del /s /q /f Z:\footprint\lcsc_transistors\.*
rmdir /s /q Z:\footprint\lcsc_transistors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\transistors.csv
popd
