#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts	est.bat xal
popd
