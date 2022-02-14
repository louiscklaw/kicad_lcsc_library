#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\pushbutton_switches_relays\*.*
del Z:\footprint\pushbutton_switches_relays\.*
rmdir Z:\footprint\pushbutton_switches_relays\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\pushbutton_switches_relays.csv
popd