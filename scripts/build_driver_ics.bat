#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_driver_ics\*.*
del Z:\footprint\lcsc_driver_ics\.*
rmdir Z:\footprint\lcsc_driver_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\driver_ics.csv
popd
