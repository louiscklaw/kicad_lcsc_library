#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_power_management_ics\*.*
del Z:\footprint\lcsc_power_management_ics\.*
rmdir Z:\footprint\lcsc_power_management_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\power_management_ics.csv
popd
