#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_pushbutton_switches_relays\*.*
del /s /q /f Z:\footprint\lcsc_pushbutton_switches_relays\.*
rmdir /s /q Z:\footprint\lcsc_pushbutton_switches_relays\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\pushbutton_switches_relays.csv
popd
