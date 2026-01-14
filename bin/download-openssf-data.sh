#!/bin/bash
# Download JSON files for specifide OpenSSF project IDs
#   Usage: download-openssf-data.sh id1 id2 ...
#
BASE_URL="https://www.bestpractices.dev/en/projects/"
DEST_DIR="_data/openssf"

if [ -p /dev/stdin ]; then
    # Read the data from the pipe into a variable or process it line by line
    piped_input=$(cat)
    set -- $piped_input
fi

for id in $*; do
    wget "${BASE_URL}${id}.json" --output-document="${DEST_DIR}/${id}.json"
    if [ $? -ne 0 ]; then
        echo "Error downloading data for OpenSSF ID: ${id}" >&2
    else
        echo "Successfully downloaded data for OpenSSF ID: ${id}"
    fi
done