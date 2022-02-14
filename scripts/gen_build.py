import os,sys
from pprint import pprint

template = '''#!/usr/bin/env bash

timeout {timeout}

git fetch --all
git pull

del Z:\\footprint\\lcsc_xaa\\*.*
del Z:\\footprint\\lcsc_xaa\\.*
rmdir Z:\\footprint\\lcsc_xaa\\ 

pushd JLC2KiCad_lib
  scripts\\test.bat output\\xaa.csv
popd
'''

target_csv = []



i = 0

# for target_bat, csv_name in target_build_bats:
#   i += 1
#   with open('scripts\\'+target_bat, 'w') as f:
#     f.write(template.replace('xaa', csv_name).replace('{timeout}', str(5 * i)))

for root, dirs, files in os.walk("C:\\Users\\logic\\_workspace\\kicad_lcsc_library\\lcsc2kicad\\scripts\\output\\", topdown=False):
    for name in files:
        print(os.path.join(root, name))
        if (name.split('.')[0] != ''):
          target_csv.append(name.split('.')[0])

target_build_bats = map(lambda x: ['build_'+x+'.bat', x], target_csv)

for target_bat, csv_name in target_build_bats:
  with open('scripts\\'+target_bat, 'w') as f:
    f.write(template.replace('xaa', csv_name).replace('{timeout}', str(5 * i)))
