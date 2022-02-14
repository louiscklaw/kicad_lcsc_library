#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_electromechanical_devices_components\*.*
del /s /q /f Z:\footprint\lcsc_electromechanical_devices_components\.*
rmdir /s /q Z:\footprint\lcsc_electromechanical_devices_components\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\electromechanical_devices_components.csv
popd
