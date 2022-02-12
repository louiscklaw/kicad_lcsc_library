@echo on

@REM git fetch --all
@REM git pull

pushd JLC2KiCad_lib
  scripts\test.bat xtest
popd
