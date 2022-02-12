import requests 
from pprint import pprint

import json
import os, sys
import logging
import argparse
import re
import shutil

from KicadModTree import *

import helper
from footprint.footprint import create_footprint, get_footprint_info
from schematic.schematic import create_schematic

import csv

from JLC2KiCad_lib import add_component

# list file
_CSV_PATH='C:\\Users\\logic\\_workspace\\kicad_lcsc_library\\lcsc2kicad\\scripts\\'+sys.argv[1]

# config
LCSC_PART_COL=0
FIRST_CATEGORY_COL=1
SECOND_CATEGORY_COL=2
MFR_PART_COL=3
PACKAGE_COL=4
SOLDER_JOINT_COL=5
MANUFACTURER_COL=6
LIBRARY_TYPE_COL=7
DESCRIPTION_COL=8
DATASHEET_COL=9
PRICE_COL=10
STOCK_COL=11


# config
output_dir='My_lib'
model_path_relative=True
footprint_creation=True
schematic_creation=True
schematic_lib='My_Schematic_lib'
footprint_lib='footprint'
logging_level='DEBUG'
log_file=True

args = {}

LCSC_PART_LIST =[]

with open(_CSV_PATH, newline='') as csvfile:
  spamreader = csv.reader(csvfile, delimiter=',')
  i = 0
  for row in spamreader:
    if i != 0:
      lcsc_part_num = row[LCSC_PART_COL]
      first_category = row[FIRST_CATEGORY_COL].replace('/', ',')
      second_category = row[SECOND_CATEGORY_COL]
      descr = row[DESCRIPTION_COL]
      mfr_part = row[MFR_PART_COL]
      print(f'pushing component {lcsc_part_num}')
      LCSC_PART_LIST.append([lcsc_part_num, first_category, second_category, descr, mfr_part]) 
      
    else:
      i+=1

for [lcsc_part_num, first_cat, second_cat, descr, mfr_part] in LCSC_PART_LIST:
  tags = ', '.join([first_cat, second_cat])
  try:
    print(f'adding {lcsc_part_num}...')
    # C:\Users\logic\_workspace\kicad_lcsc_library\JLC2KiCad_lib\My_lib\footprint\GZ1608D601TF.kicad_mod

    footprint_create_path = 'Z:\\footprint'
    # footprint_create_path = 'C:\\Users\\logic\\_workspace\\kicad_lcsc_library\\JLC2KiCad_lib\\My_lib\\footprint'
    library_name = first_cat.replace(',','_').replace(' ','_')

    try:
      footprint_filename = add_component(lcsc_part_num, footprint_create_path, library_name)
    except Exception as e:
      print(f'error adding {lcsc_part_num}, skipping')
      continue

    if type(footprint_filename) == tuple:
      # exit follow-up as tuple found
      continue
    else:
      # continue, component created
      try:
        footprint_file_created = '\\'.join([footprint_create_path, library_name, footprint_filename])
        pprint(footprint_file_created)
      except Exception as e:
        pprint([footprint_create_path, library_name, footprint_filename])

      # update pad name
      with open(footprint_file_created,'r+') as fi:
        temp = fi.readlines()
        temp_out = []
        for line in temp:
          temp_out.append( re.sub('\((\d+)\)', r'_\g<1>', line))

        fi.seek(0)
        fi.truncate()
        fi.writelines(''.join(temp_out))

      # update_descr
      # with open(footprint_file_created,'r+') as fi:
        temp = fi.readlines()
        temp_out = []
        for line in temp:
          temp_out.append( re.sub('\(descr ".+"\)', r'(descr "'+mfr_part+', '+descr+'")', line))

        fi.seek(0)
        fi.truncate()
        fi.writelines(''.join(temp_out))

      # update tags
      # with open(footprint_file_created,'r+') as fi:
        temp = fi.readlines()
        temp_out = []
        for line in temp:
          temp_out.append( re.sub('\(tags ".+"\)', r'(tags "'+descr+', '+tags+'")', line))
        fi.seek(0)
        fi.truncate()
        fi.writelines(''.join(temp_out))

  except Exception as e:
    print(f'error adding {lcsc_part_num}...')
    raise
