#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_embedded_peripheral_ics\*.*
del /s /q /f Z:\footprint\lcsc_embedded_peripheral_ics\.*
rmdir /s /q Z:\footprint\lcsc_embedded_peripheral_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\embedded_peripheral_ics.csv
popd
