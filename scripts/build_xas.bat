#!/usr/bin/env bash

timeout 95

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xas
popd
