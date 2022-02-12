#!/usr/bin/env bash

timeout 25

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xae
popd
