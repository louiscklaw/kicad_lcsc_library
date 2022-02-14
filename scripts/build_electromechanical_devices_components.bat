#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\lcsc_electromechanical_devices_components\*.*
del Z:\footprint\lcsc_electromechanical_devices_components\.*
rmdir Z:\footprint\lcsc_electromechanical_devices_components\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\electromechanical_devices_components.csv
popd
