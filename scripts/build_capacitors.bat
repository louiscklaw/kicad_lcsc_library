#!/usr/bin/env bash

timeout 30

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\capacitors.csv
popd
