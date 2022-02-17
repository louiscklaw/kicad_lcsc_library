set directory=%1
set dest_dir=C:\Users\logic\_TODO\lcsc_components\%directory%\

rmdir /S /Q %dest_dir%

mkdir C:\Users\logic\_TODO\lcsc_components\%directory%\
start /B copy Z:\footprint\%directory%\ %dest_dir%

mkdir %dest_dir%packages3d
start /B copy Z:\footprint\%directory%\packages3d %dest_dir%packages3d
