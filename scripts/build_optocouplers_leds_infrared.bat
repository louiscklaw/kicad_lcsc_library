#!/usr/bin/env bash

timeout 155

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\optocouplers_leds_infrared.csv
popd
