#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_filters_emi_optimization\*.*
del Z:\footprint\lcsc_filters_emi_optimization\.*
rmdir Z:\footprint\lcsc_filters_emi_optimization\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\filters_emi_optimization.csv
popd
