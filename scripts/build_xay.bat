#!/usr/bin/env bash

timeout 125

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xay
popd
