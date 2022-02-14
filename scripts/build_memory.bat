#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_memory\*.*
del Z:\footprint\lcsc_memory\.*
rmdir Z:\footprint\lcsc_memory\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\memory.csv
popd
