#!/usr/bin/env bash

timeout 195

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\sensors.csv
popd
