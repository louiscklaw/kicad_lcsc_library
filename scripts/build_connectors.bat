#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\connectors\*.*
del Z:\footprint\connectors\.*
rmdir Z:\footprint\connectors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\connectors.csv
popd
