#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\embedded_processors_controllers\*.*
del Z:\footprint\embedded_processors_controllers\.*
rmdir Z:\footprint\embedded_processors_controllers\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\embedded_processors_controllers.csv
popd