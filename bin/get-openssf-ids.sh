#!/bin/bash
# Extract OpenSSF project IDs from software catalog files
#   Usage: get-openssf-ids file1 file2 ...
#
# Files must contain the key value pair: 
#   "openssf_bestpractices_id: <id>"
#
grep -v "^[[:space:]]*#" $* | \
    grep openssf_bestpractices_id: | \
    awk '{if(NF > 1) print $2}'
