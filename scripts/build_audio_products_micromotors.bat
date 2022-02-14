#!/usr/bin/env bash

timeout 15

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\audio_products_micromotors.csv
popd
