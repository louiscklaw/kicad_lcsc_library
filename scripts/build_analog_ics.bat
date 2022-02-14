#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\analog_ics\*.*
del Z:\footprint\analog_ics\.*
rmdir Z:\footprint\analog_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\analog_ics.csv
popd
