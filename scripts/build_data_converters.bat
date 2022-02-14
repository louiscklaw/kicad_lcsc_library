#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\data_converters\*.*
del Z:\footprint\data_converters\.*
rmdir Z:\footprint\data_converters\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\data_converters.csv
popd
