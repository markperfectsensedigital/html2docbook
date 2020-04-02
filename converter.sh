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

if [[ $# -lt 1 ]]; then
    echo "Usage: convertor.sh input_file.html [quoted heading text]"
    exit
fi

if [[ ! -f $1 ]]; then
    echo "$1 does not exist. Try again."
    exit
fi


./cleanit.py $1
if [ $? -ne 0 ]; then
    echo "Could not clean file. Try again."
    exit
fi

HEADINGCOMMAND=`saxon -s:cleanfile.html -xsl:heading_maker.xsl`
echo $HEADINGCOMMAND
eval $HEADINGCOMMAND
for i in "${heading[@]}"; do 

  OUTPUTFILE="docbooks/$i.xml"
  echo "Processing heading $i into $OUTPUTFILE"
  saxon -s:/Users/mlautman/Documents/paligo/converter/cleanfile.html -xsl:/Users/mlautman/Documents/paligo/converter/converter.xsl -o:"$OUTPUTFILE" startingheading="$i" 2>/dev/null
done