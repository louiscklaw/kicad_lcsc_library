#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  timeout 690

  scripts\test.bat xaw
popd
