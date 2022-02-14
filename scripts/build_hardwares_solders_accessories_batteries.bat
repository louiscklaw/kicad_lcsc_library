#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_hardwares_solders_accessories_batteries\*.*
del /s /q /f Z:\footprint\lcsc_hardwares_solders_accessories_batteries\.*
rmdir /s /q Z:\footprint\lcsc_hardwares_solders_accessories_batteries\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\hardwares_solders_accessories_batteries.csv
popd
