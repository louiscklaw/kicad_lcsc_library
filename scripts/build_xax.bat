#!/usr/bin/env bash

timeout 120

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xax
popd
