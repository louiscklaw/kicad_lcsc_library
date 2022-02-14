#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_embedded_processors_controllers\*.*
del /s /q /f Z:\footprint\lcsc_embedded_processors_controllers\.*
rmdir /s /q Z:\footprint\lcsc_embedded_processors_controllers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\embedded_processors_controllers.csv
popd
