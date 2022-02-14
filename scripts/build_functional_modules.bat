#!/usr/bin/env bash

timeout 110

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\functional_modules.csv
popd
