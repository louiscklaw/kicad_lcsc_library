#!/usr/bin/env bash

timeout 0

git fetch --all
git pull

del /s /q /f Z:\footprint\lcsc_buzzers_speakers_microphones\*.*
del /s /q /f Z:\footprint\lcsc_buzzers_speakers_microphones\.*
rmdir /s /q Z:\footprint\lcsc_buzzers_speakers_microphones\ 

pushd JLC2KiCad_lib
  scripts\test.bat output\buzzers_speakers_microphones.csv
popd
