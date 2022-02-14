#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_transistors\*.*
del Z:\footprint\lcsc_transistors\.*
rmdir Z:\footprint\lcsc_transistors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\transistors.csv
popd
