#!/bin/bash
# Perform the following preprocessing on the HTML files before running this script:

# The entity name must immediately follow the '&' in the entity reference.
# To resolve:
#   Replace any & that is not an HTML entity with nothing

#The element type "link" must be terminated by the matching end-tag "</link>".
# Close opened <link> tags
# Close opened <img> tags

# Attribute name "data-docsearch-input" associated with an element type "input" must be followed by the ' = ' character.

# Find attributes with tags that have no = and delete them.
# Remove namespace declaraiton in <html> tag

if [[ $# -lt 2 ]]; then
    echo "Usage: convertor.sh input_file1.html input_file2.html"
    exit
fi

OLD_ORIGINAL_HTML=$1
OLD_ORIGINAL_HTML=$(echo "$OLD_ORIGINAL_HTML" | sed "s/file:\/\///")

NEW_ORIGINAL_HTML=$2
NEW_ORIGINAL_HTML=$(echo "$NEW_ORIGINAL_HTML" | sed "s/file:\/\///")

if [[ ! -f $OLD_ORIGINAL_HTML ]]; then
    echo "$OLD_ORIGINAL_HTML does not exist. Try again."
    exit
fi

if [[ ! -f $NEW_ORIGINAL_HTML ]]; then
    echo "$NEW_ORIGINAL_HTML does not exist. Try again."
    exit
fi

../cleanit.py "$OLD_ORIGINAL_HTML"
if [ $? -ne 0 ]; then
    echo "Could not clean file. Try again."
    exit
fi

cp cleanfile.html /tmp/old.html

../cleanit.py "$NEW_ORIGINAL_HTML"
if [ $? -ne 0 ]; then
    echo "Could not clean file. Try again."
    exit
fi

cp cleanfile.html /tmp/new.html


saxon -s:/tmp/old.html -xsl:text_extractor.xsl -o:/tmp/old.txt
saxon -s:/tmp/new.html -xsl:text_extractor.xsl -o:/tmp/new.txt


diff -B /tmp/old.txt /tmp/new.txt

