#!/usr/bin/env bash

timeout 140

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xbb
popd
