#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\embedded_peripheral_ics\*.*
del Z:\footprint\embedded_peripheral_ics\.*
rmdir Z:\footprint\embedded_peripheral_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\embedded_peripheral_ics.csv
popd
