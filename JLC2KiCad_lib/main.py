import requests 
import json
import os
import logging
import argparse

from KicadModTree import *

import helper
from footprint.footprint import create_footprint, get_footprint_info
from schematic.schematic import create_schematic

import csv

from JLC2KiCad_lib import add_component

# list file
_CSV_PATH= r'C:\Users\logic\_workspace\kicad_lcsc_library\lcsc2kicad\scripts\xam'

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

      break
    else:
      i+=1

for [lcsc_part_num, first_cat, second_cat, descr, mfr_part] in LCSC_PART_LIST:
  try:
    print(f'adding {lcsc_part_num}...')
    add_component('C1002', args)
  except Exception as e:
    print(f'error adding {lcsc_part_num}...')
