#!/usr/bin/env bash

timeout 110

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xav
popd
