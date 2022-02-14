#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_crystals\*.*
del Z:\footprint\lcsc_crystals\.*
rmdir Z:\footprint\lcsc_crystals\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals.csv
popd
