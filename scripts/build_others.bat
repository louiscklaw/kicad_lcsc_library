#!/usr/bin/env bash

timeout 165

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\others.csv
popd
