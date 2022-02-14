#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\resistors\*.*
del Z:\footprint\resistors\.*
rmdir Z:\footprint\resistors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\resistors.csv
popd
