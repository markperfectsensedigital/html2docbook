#!/bin/bash

# Makes a zip file for uploading to Paligo.
# Run the script against a Sphinx file, such as 
# /Users/mlautman/Documents/docs/_build/html/cms/editorial-guide/intro/index.html
# The input file goes through cleansing, saved as cleanfile.html.
# Then it goes through the transform.
# See the transform make_upload_xsl for details.
if [[ $# -lt 1 ]]; then
    echo "Usage: make_upload.sh sphinx_file.html"
    exit
fi

if [[ ! -f "$1" ]]; then
    echo "$1 does not exist. Try again."
    exit
fi

./cleanit.py $1

if [ $? -ne 0 ]; then
    echo "Could not clean file. Try again."
    exit
fi

echo "Finished cleaning"

if [[ -e "/tmp/upload/" ]]; then
    rm -rf /tmp/upload/*
else
    mkdir /tmp/upload/
fi

saxon -s:cleanfile.html -xsl:make_upload.xsl -o:/tmp/upload/index.html


if [[ -f /tmp/upload.zip ]]; then
   rm /tmp/upload.zip
fi

zip -rj /tmp/upload.zip /tmp/upload/index.html

echo "All done, upload file is /tmp/upload.zip"