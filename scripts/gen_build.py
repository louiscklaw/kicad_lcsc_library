
template = '''#!/usr/bin/env bash

timeout {timeout}

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
'xal',
'xam',
'xan',
'xao',
'xap',
'xaq',
'xar',
'xas',
'xat',
'xau',
'xav',
'xaw',
'xax',
'xay',
'xaz',
'xba',
'xbb',
'xbc',
'xbd',
'xbe',
'xbf',
'xbg',
'xbh',
'xbi',
'xbj',
]

target_build_bats = map(lambda x: ['build_'+x+'.bat', x], target_csv)

i = 0

for target_bat, csv_name in target_build_bats:
  i += 1
  with open('scripts\\'+target_bat, 'w') as f:
    f.write(template.replace('xaa', csv_name).replace('{timeout}', str(5 * i)))
