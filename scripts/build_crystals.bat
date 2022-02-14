#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_crystals\*.*
del /s /q /f Z:\footprint\lcsc_crystals\.*
rmdir /s /q Z:\footprint\lcsc_crystals\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals.csv
popd
