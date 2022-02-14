#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_iot_communication_modules\*.*
del /s /q /f Z:\footprint\lcsc_iot_communication_modules\.*
rmdir /s /q Z:\footprint\lcsc_iot_communication_modules\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\iot_communication_modules.csv
popd
