#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del Z:\footprint\buzzers_speakers_microphones\*.*
del Z:\footprint\buzzers_speakers_microphones\.*
rmdir Z:\footprint\buzzers_speakers_microphones\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\buzzers_speakers_microphones.csv
popd