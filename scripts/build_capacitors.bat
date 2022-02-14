#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\capacitors\*.*
del Z:\footprint\capacitors\.*
rmdir Z:\footprint\capacitors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\capacitors.csv
popd
