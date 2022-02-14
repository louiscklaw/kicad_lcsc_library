#!/usr/bin/env bash

timeout 190

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\rf_radio.csv
popd
