set LCSC_COMPONENT_DIR=%1

rmdir /s /q C:\Users\logic\_TODO\%LCSC_COMPONENT_DIR%

cd C:\Users\logic\_TODO
  git clone git@github.com:louiscklaw/%LCSC_COMPONENT_DIR%.git

@REM move  "C:\Users\logic\_TODO\lcsc_components\%LCSC_COMPONENT_DIR%\*.*" "C:\Users\logic\_TODO\%LCSC_COMPONENT_DIR%"
@REM mkdir C:\Users\logic\_TODO\%LCSC_COMPONENT_DIR%\packages3d
@REM move  "C:\Users\logic\_TODO\lcsc_components\%LCSC_COMPONENT_DIR%\packages3d\*.*" "C:\Users\logic\_TODO\%LCSC_COMPONENT_DIR%\packages3d"

@REM cd C:\Users\logic\_TODO\%LCSC_COMPONENT_DIR%
@REM   start scripts\push.bat

@REM cd C:\Users\logic\_workspace\kicad_lcsc_library
@REM rmdir /s /q Z:\footprint\%LCSC_COMPONENT_DIR%