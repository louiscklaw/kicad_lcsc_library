#!/usr/bin/env bash

timeout 50

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals.csv
popd
