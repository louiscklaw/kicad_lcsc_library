#!/usr/bin/env bash

timeout 120

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\hardwares_solders_accessories_batteries.csv
popd
