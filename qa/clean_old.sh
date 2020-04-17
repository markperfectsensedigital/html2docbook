#!/bin/bash
#sed -i "s/old-text/new-text/g" "/tmp/cold.txt" > "/tmp/barf.txt"

perl -pi -e 's/\.\.\/\.\.\/\.\.\/_images\///g' /tmp/cold.txt
perl -pi -e "s/’/'/g" /tmp/cold.txt