#!/bin/bash

OUTPUTFILE='include.xml'
rm $OUTPUTFILE
declare -a arr=("Global Search" "Filtering with Global Search" "Search By Color" "Advanced Query Search" "Full Screen Search" "Saving Searches" "Creating Work Streams" "Bulk Edit" "Custom Field Searches" "Contextual Search" "Search Results Carousel" "Selections")



for i in "${arr[@]}"
do
   saxon -s:/tmp/Search-4572/resource-4572.xml -xsl:include.xsl startingheading="$i" >> $OUTPUTFILE
   # or do whatever with individual element of the array
done


echo "Output in $OUTPUTFILE"
