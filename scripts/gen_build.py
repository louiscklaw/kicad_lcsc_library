
template = '''#!/usr/bin/env bash

git fetch --all
git pull

pushd JLC2KiCad_lib
  scripts\\test.bat xaa
popd
'''

target_csv = ['xaa',
'xab',
'xac',
'xad',
'xae',
'xaf',
'xag',
'xah',
'xai',
'xaj',
'xak',
'xal']

target_build_bats = map(lambda x: ['build_'+x+'.bat', x], target_csv)

for target_bat, csv_name in target_build_bats:

  with open('scripts\\'+target_bat, 'w') as f:
    f.write(template.replace('xaa', csv_name))
