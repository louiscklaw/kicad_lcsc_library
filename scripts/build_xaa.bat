#!/usr/bin/env bash

timeout 5

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xaa
popd
