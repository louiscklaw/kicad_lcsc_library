#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\battery_products\*.*
del Z:\footprint\battery_products\.*
rmdir Z:\footprint\battery_products\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\battery_products.csv
popd
