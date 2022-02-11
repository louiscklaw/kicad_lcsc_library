pushd scripts
  rm -rf x*
  split .\lcsc_full_list.csv -l 29999
popd
