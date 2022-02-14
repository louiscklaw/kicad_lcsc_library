#!/usr/bin/env bash

timeout 80

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\driver_ics.csv
popd
