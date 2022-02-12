#!/usr/bin/env bash

timeout 170

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xbh
popd
