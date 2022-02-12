#!/usr/bin/env bash

timeout 35

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xag
popd
