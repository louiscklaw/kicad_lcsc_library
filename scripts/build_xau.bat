#!/usr/bin/env bash

timeout 105

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xau
popd
