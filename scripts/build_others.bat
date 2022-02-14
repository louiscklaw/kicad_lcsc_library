#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\others\*.*
del Z:\footprint\others\.*
rmdir Z:\footprint\others\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\others.csv
popd
