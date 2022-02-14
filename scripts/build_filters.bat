#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\filters\*.*
del Z:\footprint\filters\.*
rmdir Z:\footprint\filters\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\filters.csv
popd
