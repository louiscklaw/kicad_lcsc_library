#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_switches\*.*
del Z:\footprint\lcsc_switches\.*
rmdir Z:\footprint\lcsc_switches\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\switches.csv
popd
