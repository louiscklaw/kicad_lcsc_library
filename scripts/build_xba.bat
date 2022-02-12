#!/usr/bin/env bash

timeout 135

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xba
popd
