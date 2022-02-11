#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xas
popd
