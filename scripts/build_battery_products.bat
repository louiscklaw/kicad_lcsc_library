#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_battery_products\*.*
del /s /q /f Z:\footprint\lcsc_battery_products\.*
rmdir /s /q Z:\footprint\lcsc_battery_products\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\battery_products.csv
popd
