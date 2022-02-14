#!/usr/bin/env bash

timeout 100

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\filters.csv
popd
