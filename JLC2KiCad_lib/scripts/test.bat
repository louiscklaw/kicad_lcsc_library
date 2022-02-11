@REM pipenv run python JLC2KiCad_lib.py C10021 C10020 C10019 C10018 C10017 C10016 C10015 C10014 C10013 C10012 C10011 C10010 C1009 C1008 C1007 C1006 C1005 C1004 C1003 C1002 -dir My_lib -schematic_lib My_Schematic_lib --no_footprint

rmdir /S /Q C:\Users\logic\_workspace\kicad_lcsc_library\JLC2KiCad_lib\My_lib

pipenv sync
pipenv run python main.py %1
