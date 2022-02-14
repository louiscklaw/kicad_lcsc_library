#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\circuit_protection\*.*
del Z:\footprint\circuit_protection\.*
rmdir Z:\footprint\circuit_protection\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\circuit_protection.csv
popd
