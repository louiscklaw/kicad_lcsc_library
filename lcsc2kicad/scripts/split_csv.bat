pushd scripts
  rm -rf x*
  split .\lcsc_full_list.csv -l 9999
popd
