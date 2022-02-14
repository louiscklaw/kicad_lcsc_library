#!/usr/bin/env bash

timeout 40

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\clock_and_timing.csv
popd
