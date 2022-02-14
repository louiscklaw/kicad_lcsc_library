#!/usr/bin/env bash

timeout 95

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat output\embedded_processors_controllers.csv
popd
