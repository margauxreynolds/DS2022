#!/bin/bash

#Step 2
/usr/bin/curl -o lab3-bundle.tar.gz https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

#Step 3 
/usr/bin/tar xzf lab3-bundle.tar.gz

#Step 4
/usr/bin/awk '!/^[[:space:]]*$/' lab3_data.tsv > lab3_data_cleaned.tsv

#Step 5
/usr/bin/awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' lab3_data_cleaned.tsv > lab3_data_cleaned.csv

#Step 6
LINE_COUNT=$(/usr/bin/wc -l <(/usr/bin/tail -n +3 lab3_data_cleaned.csv))
echo "Number of data rows remaining: $LINE_COUNT"

#Step 7
/usr/bin/tar czf converted-archive.tar.gz lab3_data_cleaned.csv

