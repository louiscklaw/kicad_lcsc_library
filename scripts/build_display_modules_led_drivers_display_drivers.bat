#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_display_modules_led_drivers_display_drivers\*.*
del /s /q /f Z:\footprint\lcsc_display_modules_led_drivers_display_drivers\.*
rmdir /s /q Z:\footprint\lcsc_display_modules_led_drivers_display_drivers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\display_modules_led_drivers_display_drivers.csv
popd
