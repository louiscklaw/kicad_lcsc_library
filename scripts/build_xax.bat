#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  timeout 720

  scripts\test.bat xax
popd
