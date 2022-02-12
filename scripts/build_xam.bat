#!/usr/bin/env bash

timeout 65

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xam
popd
