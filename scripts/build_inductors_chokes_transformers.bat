#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_inductors_chokes_transformers\*.*
del /s /q /f Z:\footprint\lcsc_inductors_chokes_transformers\.*
rmdir /s /q Z:\footprint\lcsc_inductors_chokes_transformers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\inductors_chokes_transformers.csv
popd
