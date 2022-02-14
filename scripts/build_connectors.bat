#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_connectors\*.*
del /s /q /f Z:\footprint\lcsc_connectors\.*
rmdir /s /q Z:\footprint\lcsc_connectors\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\connectors.csv
popd
