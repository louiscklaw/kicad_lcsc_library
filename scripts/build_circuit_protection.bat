#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_circuit_protection\*.*
del /s /q /f Z:\footprint\lcsc_circuit_protection\.*
rmdir /s /q Z:\footprint\lcsc_circuit_protection\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\circuit_protection.csv
popd
