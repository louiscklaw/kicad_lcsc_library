#!/usr/bin/env bash

timeout 145

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\logic_ics.csv
popd
