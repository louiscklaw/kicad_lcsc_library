#!/usr/bin/env bash

timeout 55

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals_oscillators_resonators.csv
popd
