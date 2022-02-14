#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_relays\*.*
del /s /q /f Z:\footprint\lcsc_relays\.*
rmdir /s /q Z:\footprint\lcsc_relays\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\relays.csv
popd
