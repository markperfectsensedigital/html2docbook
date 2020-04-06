#!/bin/bash

OUTPUTFILE='include.xml'
rm $OUTPUTFILE
#declare -a arr=("Brightspot Enterprise Plugins" "Brightspot Analytics" "Brightspot App-On-Demand" "Brightspot Bitly" "Brightspot Brightcove" "Brightspot Conversation" "Brightspot CQ/AEM" "Brightspot Crosslinker" "Brightspot Curation" "Brightspot DRM" "Brightspot ExactTarget" "Brightspot Flickr" "Brightspot Gigya" "Brightspot Global Content Discovery" "Brightspot Google" "Brightspot Google Analytics" "Brightspot Google DFP" "Brightspot Handlebars" "Brightspot Image" "Brightspot InDesign" "Brightspot Kaltura" "Brightspot Location" "Brightspot Media Desk" "Brightspot Moderation" "Brightspot MPX" "Brightspot Omniture" "Brightspot Personalization" "Brightspot Salesforce" "Brightspot Social" "Brightspot Watch" )

declare -a arr=("Overview" "Features")
for i in "${arr[@]}"
do
   echo "Processing $i"
   saxon -s:/private/tmp/BSP1/resource-7697.xml -xsl:include.xsl startingheading="$i" >> $OUTPUTFILE
   # or do whatever with individual element of the array
done


echo "Output in $OUTPUTFILE"
