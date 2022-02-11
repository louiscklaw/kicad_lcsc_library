import os,sys
from pprint import pprint
import re

FOOTPRINT_PATH=sys.argv[1]
SCRIPT_PATH=os.path.dirname(os.path.abspath(__file__))
kicad_mod_files = []

regex = re.compile(r"pad", re.IGNORECASE)

for root, dirs, files in os.walk('.'):
  for name in files:
    if (name.endswith('.kicad_mod')):
      kicad_mod_files.append(os.path.abspath(os.path.join(SCRIPT_PATH, root, name)))

for kicad_mod_file in kicad_mod_files:
  with open(kicad_mod_file,'r+') as fi:
    temp = fi.readlines()
    temp_out = []
    for line in temp:
      temp_out.append( re.sub('\((\d+)\)', r'_\g<1>', line))

    fi.seek(0)
    fi.truncate()

    fi.writelines(''.join(temp_out))
