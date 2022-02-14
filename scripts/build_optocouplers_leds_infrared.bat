#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\optocouplers_leds_infrared\*.*
del Z:\footprint\optocouplers_leds_infrared\.*
rmdir Z:\footprint\optocouplers_leds_infrared\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\optocouplers_leds_infrared.csv
popd