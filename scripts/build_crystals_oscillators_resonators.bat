#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_crystals_oscillators_resonators\*.*
del /s /q /f Z:\footprint\lcsc_crystals_oscillators_resonators\.*
rmdir /s /q Z:\footprint\lcsc_crystals_oscillators_resonators\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals_oscillators_resonators.csv
popd
