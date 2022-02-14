#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_inductors_coils_transformers\*.*
del Z:\footprint\lcsc_inductors_coils_transformers\.*
rmdir Z:\footprint\lcsc_inductors_coils_transformers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\inductors_coils_transformers.csv
popd
