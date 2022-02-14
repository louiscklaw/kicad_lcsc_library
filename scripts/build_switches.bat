#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\switches\*.*
del Z:\footprint\switches\.*
rmdir Z:\footprint\switches\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\switches.csv
popd
