#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  timeout 840

  scripts\test.bat xbb
popd
