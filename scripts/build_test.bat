@echo on

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\test.bat xtest
popd
