#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_switches\*.*
del /s /q /f Z:\footprint\lcsc_switches\.*
rmdir /s /q Z:\footprint\lcsc_switches\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\switches.csv
popd
