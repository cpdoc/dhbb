#!/usr/bin/python3

# generate a single CSV file from multiple text files.  use this to #
# import multiple files to WKS at once.  importing each file
# individually doesn't seem to work very well on the web interface. 

import sys
import re
import csv
import uuid

with open('{}.csv'.format(uuid.uuid1()),'w') as csvfile:
    csv_writer = csv.writer(csvfile, delimiter=',', quotechar='"')
    for fn in sys.argv[1:]:
        with open(fn, 'r') as f:
            data = f.read()
            csv_writer.writerow([fn, re.sub(r'\n',r'\r', data)])

        
