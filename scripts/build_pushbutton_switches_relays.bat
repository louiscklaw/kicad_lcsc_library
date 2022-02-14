#!/usr/bin/env bash

timeout 175

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\pushbutton_switches_relays.csv
popd
