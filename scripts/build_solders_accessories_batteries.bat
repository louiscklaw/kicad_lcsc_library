#!/usr/bin/env bash

timeout 200

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\solders_accessories_batteries.csv
popd
