#!/usr/bin/env bash

timeout 185

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\resistors.csv
popd
