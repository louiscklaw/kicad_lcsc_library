#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_interface_ics\*.*
del Z:\footprint\lcsc_interface_ics\.*
rmdir Z:\footprint\lcsc_interface_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\interface_ics.csv
popd
