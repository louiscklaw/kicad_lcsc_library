#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\interface_ics\*.*
del Z:\footprint\interface_ics\.*
rmdir Z:\footprint\interface_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\interface_ics.csv
popd
