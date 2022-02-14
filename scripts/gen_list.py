import os,sys
from pprint import pprint

import csv

_CSV_PATH='C:\\Users\\logic\\_workspace\\kicad_lcsc_library\\lcsc2kicad\\scripts\\lcsc_full_list.csv'

list_by_first_cat = {}

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

LCSC_PART_LIST =[]

print('start')

# parse csv
# saintize first category
# collect to dictionary by saintized category
with open(_CSV_PATH, newline='') as csvfile:
  spamreader = csv.reader(csvfile, delimiter=',')
  i = 0

  print(f'pushing component ')
  for row in spamreader:
    if i != 0:
      lcsc_part_num = row[LCSC_PART_COL]
      first_category = row[FIRST_CATEGORY_COL].replace('/', ',')
      saintized_first_category = first_category.replace(',','_').replace(' ','_').replace('&','_').replace('__','_').replace('__','_').replace('__','_').lower()
      second_category = row[SECOND_CATEGORY_COL]
      descr = row[DESCRIPTION_COL]
      mfr_part = row[MFR_PART_COL]
      
      LCSC_PART_LIST.append([lcsc_part_num, first_category, second_category, descr, mfr_part]) 
      
      if (saintized_first_category in list_by_first_cat):
        list_by_first_cat[saintized_first_category].append(','.join(row))
      else:
        list_by_first_cat[saintized_first_category] = [','.join(row)]

    else:
      i+=1

# pprint(list_by_first_cat)
# sys.exit()

for file_name in list_by_first_cat:
  print(f'writing {file_name}')
  with open(f'C:\\Users\\logic\\_workspace\\kicad_lcsc_library\\lcsc2kicad\\scripts\\output\\{file_name}.csv', 'w') as csvfile:
    # spamwriter = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    # for row in sorted(list_by_first_cat[file_name]):
    #   spamwriter.writerow(row.split(','))
    csvfile.writelines('\n'.join(sorted(list_by_first_cat[file_name])))

# write to file by key 

print('done')