#!/usr/bin/env bash

timeout 85

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xaq
popd
