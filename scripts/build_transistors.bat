#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\transistors\*.*
del Z:\footprint\transistors\.*
rmdir Z:\footprint\transistors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\transistors.csv
popd
