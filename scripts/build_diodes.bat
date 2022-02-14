#!/usr/bin/env bash

timeout 70

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\diodes.csv
popd
