#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\memory\*.*
del Z:\footprint\memory\.*
rmdir Z:\footprint\memory\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\memory.csv
popd
