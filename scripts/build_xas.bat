#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  timeout 570

  scripts\test.bat xas
popd
