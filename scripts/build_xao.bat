#!/usr/bin/env bash

timeout 75

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xao
popd
