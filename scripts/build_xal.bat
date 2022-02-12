#!/usr/bin/env bash

timeout 60

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xal
popd
