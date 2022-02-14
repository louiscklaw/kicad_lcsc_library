#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\inductors_chokes_transformers\*.*
del Z:\footprint\inductors_chokes_transformers\.*
rmdir Z:\footprint\inductors_chokes_transformers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\inductors_chokes_transformers.csv
popd
