#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\crystals_oscillators_resonators\*.*
del Z:\footprint\crystals_oscillators_resonators\.*
rmdir Z:\footprint\crystals_oscillators_resonators\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals_oscillators_resonators.csv
popd
