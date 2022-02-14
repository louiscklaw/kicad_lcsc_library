#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\clock_and_timing\*.*
del Z:\footprint\clock_and_timing\.*
rmdir Z:\footprint\clock_and_timing\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\clock_and_timing.csv
popd
