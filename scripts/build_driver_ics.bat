#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\driver_ics\*.*
del Z:\footprint\driver_ics\.*
rmdir Z:\footprint\driver_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\driver_ics.csv
popd
