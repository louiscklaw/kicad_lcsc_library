#!/usr/bin/env bash

timeout 115

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\fuses.csv
popd
