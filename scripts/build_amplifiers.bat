#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\amplifiers\*.*
del Z:\footprint\amplifiers\.*
rmdir Z:\footprint\amplifiers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\amplifiers.csv
popd
