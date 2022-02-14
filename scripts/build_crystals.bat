#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\crystals\*.*
del Z:\footprint\crystals\.*
rmdir Z:\footprint\crystals\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\crystals.csv
popd
