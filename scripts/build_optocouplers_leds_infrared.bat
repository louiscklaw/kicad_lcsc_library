#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_optocouplers_leds_infrared\*.*
del /s /q /f Z:\footprint\lcsc_optocouplers_leds_infrared\.*
rmdir /s /q Z:\footprint\lcsc_optocouplers_leds_infrared\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\optocouplers_leds_infrared.csv
popd
