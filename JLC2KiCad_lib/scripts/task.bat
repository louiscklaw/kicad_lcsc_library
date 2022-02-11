@echo on

del /S /Q C:\Users\logic\_TODO\JLC2KiCad_lib\My_lib
rmdir  /S /Q C:\Users\logic\_TODO\JLC2KiCad_lib\My_lib

mkdir C:\Users\logic\_workspace\kicad-playlist\library\footprint\LCSC.pretty
mkdir C:\Users\logic\_workspace\kicad-playlist\library\footprint\LCSC.pretty\packages3d

pipenv run python JLC2KiCad_lib.py ^
  %1 ^
  -dir My_lib 

pipenv run python check_footprint_pad.py My_lib\footprint


copy C:\Users\logic\_TODO\JLC2KiCad_lib\My_lib\footprint C:\Users\logic\_workspace\kicad-playlist\library\footprint\LCSC.pretty\
copy C:\Users\logic\_TODO\JLC2KiCad_lib\My_lib\footprint\packages3d C:\Users\logic\_workspace\kicad-playlist\library\footprint\LCSC.pretty\packages3d\
