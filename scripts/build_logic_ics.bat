#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\logic_ics\*.*
del Z:\footprint\logic_ics\.*
rmdir Z:\footprint\logic_ics\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\logic_ics.csv
popd
