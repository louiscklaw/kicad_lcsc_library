#!/usr/bin/env bash

timeout 20

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xad
popd
