#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  timeout 420

  scripts\test.bat xan
popd
