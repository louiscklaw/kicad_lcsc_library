#!/usr/bin/env bash

timeout 130

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\inductors_coils_transformers.csv
popd
