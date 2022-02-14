#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\hardwares_solders_accessories_batteries\*.*
del Z:\footprint\hardwares_solders_accessories_batteries\.*
rmdir Z:\footprint\hardwares_solders_accessories_batteries\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\hardwares_solders_accessories_batteries.csv
popd
