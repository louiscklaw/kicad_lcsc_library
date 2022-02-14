#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_development_boards_tools\*.*
del /s /q /f Z:\footprint\lcsc_development_boards_tools\.*
rmdir /s /q Z:\footprint\lcsc_development_boards_tools\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\development_boards_tools.csv
popd
