#!/usr/bin/env bash

timeout 90

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\embedded_peripheral_ics.csv
popd
