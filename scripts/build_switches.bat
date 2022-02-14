#!/usr/bin/env bash

timeout 205

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\switches.csv
popd
