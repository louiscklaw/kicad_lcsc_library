#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_connectors\*.*
del Z:\footprint\lcsc_connectors\.*
rmdir Z:\footprint\lcsc_connectors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\connectors.csv
popd
