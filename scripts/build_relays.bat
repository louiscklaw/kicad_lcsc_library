#!/usr/bin/env bash

timeout 180

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\relays.csv
popd
