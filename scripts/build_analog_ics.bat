#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_analog_ics\*.*
del Z:\footprint\lcsc_analog_ics\.*
rmdir Z:\footprint\lcsc_analog_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\analog_ics.csv
popd
