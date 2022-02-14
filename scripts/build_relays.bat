#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_relays\*.*
del Z:\footprint\lcsc_relays\.*
rmdir Z:\footprint\lcsc_relays\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\relays.csv
popd
