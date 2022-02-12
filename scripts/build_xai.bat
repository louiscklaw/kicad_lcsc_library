#!/usr/bin/env bash

timeout 45

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xai
popd
