#!/bin/bash -xv
# Download SPDX license list data release, extract JSON files, update repo
#   Usage: update-spdx-json.sh tag tempdir
#
# Files will be cleaned up automatically if script
# is run in the standard ${RUNNER_TEMP} directory
#
RELEASE_BASE_URL="https://github.com/spdx/license-list-data/releases/tag/"
DATA_BASE_URL="https://github.com/spdx/license-list-data/archive/refs/tags/"
TARGET_FILES="licenses.json exceptions.json"
#
# Outputs
#
DEST_DIR="_data/spdx_license_list_data"
SOURCE_FILE="${DEST_DIR}/SOURCE"

# Argument 1 should be the tag, which is of the form "v<VERSION>"
TAG="$1"
VERSION=`echo $TAG | sed "s/^v//"`
TEMP_DIR="$2"

# Derivatives
ZIP_FILE="${TEMP_DIR}/${TAG}.zip"
TARGET_DIR="license-list-data-${VERSION}/json"

MEMBERS=""
for f in ${TARGET_FILES}; do
  MEMBERS="${MEMBERS} ${TARGET_DIR}/${f}"
done
echo MEMBERS=${MEMBERS}

# Download data file
wget "${DATA_BASE_URL}/${TAG}.zip" --output-document="${ZIP_FILE}"
if [ $? -ne 0 ]; then
  echo "Error downloading SPDX license list data for tag ${TAG}" >&2
  exit $?
else
    echo "Successfully downloaded SPDX license list data for tag ${TAG}"
fi

# Extract files of interest
unzip -j ${ZIP_FILE} ${MEMBERS} -d ${TEMP_DIR}

# Move the files into their proper place and update SOURCE info
for f in ${TARGET_FILES}; do
  mv ${TEMP_DIR}/${f} ${DEST_DIR}
done
echo ${RELEASE_BASE_URL}${TAG} > ${SOURCE_FILE}