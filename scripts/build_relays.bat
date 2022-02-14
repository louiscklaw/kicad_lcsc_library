#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\relays\*.*
del Z:\footprint\relays\.*
rmdir Z:\footprint\relays\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\relays.csv
popd
