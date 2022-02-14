#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\solders_accessories_batteries\*.*
del Z:\footprint\solders_accessories_batteries\.*
rmdir Z:\footprint\solders_accessories_batteries\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\solders_accessories_batteries.csv
popd
