#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_power_management_ics\*.*
del /s /q /f Z:\footprint\lcsc_power_management_ics\.*
rmdir /s /q Z:\footprint\lcsc_power_management_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\power_management_ics.csv
popd
