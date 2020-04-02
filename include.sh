#!/bin/bash

OUTPUTFILE='include.xml'
rm $OUTPUTFILE
declare -a arr=("Main" "Defaults" "Debug" "Dashboard" "RTE" "Integrations" "UI")

for i in "${arr[@]}"
do
   echo "Processing $i"
   saxon -s:/private/tmp/SiteSettings-4974/resource-4974.xml -xsl:include.xsl startingheading="$i" >> $OUTPUTFILE
   # or do whatever with individual element of the array
done


echo "Output in $OUTPUTFILE"
