#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_interface_ics\*.*
del /s /q /f Z:\footprint\lcsc_interface_ics\.*
rmdir /s /q Z:\footprint\lcsc_interface_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\interface_ics.csv
popd
