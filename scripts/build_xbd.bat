#!/usr/bin/env bash

timeout 150

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xbd
popd
