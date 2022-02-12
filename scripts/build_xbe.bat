#!/usr/bin/env bash

timeout 155

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xbe
popd
