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

saxon -s:/Users/mlautman/Documents/paligo/converter/test.html -xsl:/Users/mlautman/Documents/paligo/converter/converter.xsl -o:/tmp/docbook.xml

