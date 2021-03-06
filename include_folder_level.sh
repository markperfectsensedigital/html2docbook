#!/bin/bash

# This script makes a series of <xi:include> tags to paste into a parent document.

#1. Export a folder that contains the target headings. 
#2. Unzip the exported file and identify the file resource-*.xml. This file has all
#   of the target UUIDs.
#3. Create a bash array containing the target headings in the order they will be included.
#. 



if [[ $# -lt 2 ]]; then
    echo "Usage: include.sh resource-*.xml folder-name"
    exit
fi

if [[ ! -f "$1" ]]; then
    echo "$1 does not exist. Try again."
    exit
fi
INPUTFILE="$1"
OUTPUTFILE='/tmp/include.xml'
rm $OUTPUTFILE

FOLDERNAME="$2"

#"@LazyLoad" "@Modification.Classes" "@ObjectField.AnnotationProcessorClass" "@ObjectType.AnnotationProcessorClass" "@Recordable.Abstract" "@Recordable.BeanProperty" "@Recordable.BootstrapPackages" "@Recordable.BootstrapFollowReferences" "@Recordable.CollectionMaximum" "@Recordable.CollectionMinimum" "@Recordable.Denormalized" "@Recordable.DisplayName" "@Recordable.Embedded" "@Recordable.FieldInternalNamePrefix" "@Recordable.Ignored" "@Recordable.Indexed" "@Recordable.InternalName" "@Recordable.JunctionField" "@Recordable.JunctionPositionField" "@Recordable.LabelFields" "@Recordable.Maximum" "@Recordable.MimeTypes" "@Recordable.Minimum" "@Recordable.PreviewField" "@Recordable.Recalculate" "@Recordable.Regex" "@Recordable.Required" "@Recordable.SourceDatabaseClass" "@Recordable.SourceDatabaseName" "@Recordable.Step" "@Recordable.TypeId" "@Recordable.TypePostProcessorClasses" "@Recordable.Types" "@Recordable.TypesExclude" "@Recordable.Values" "@Recordable.Where" "@RoutingFilter.Path" "@UpdateTrackable.Names" 

declare -a arr=("Bug" "New Feature" "Improvement")

#declare -a arr=("Overview" "Features")
for i in "${arr[@]}"
do
   echo "Processing $i"
   saxon -s:$INPUTFILE -xsl:include_folder_level.xsl foldername="$2" startingheading="$i" >> $OUTPUTFILE
done

cat /tmp/include.xml

echo "Output in $OUTPUTFILE"
