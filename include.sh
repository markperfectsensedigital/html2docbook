#!/bin/bash

# This script makes a series of <xi:include> tags to paste into a parent document.

#1. Export a folder that contains the target headings. 
#2. Unzip the exported file and identify the file resource-*.xml. This file has all
#   of the target UUIDs.
#3. Create a bash array containing the target headings in the order they will be included.
#. 



if [[ $# -lt 1 ]]; then
    echo "Usage: include.sh resource-*.xml"
    exit
fi

if [[ ! -f "$1" ]]; then
    echo "$1 does not exist. Try again."
    exit
fi
INPUTFILE="$1"
OUTPUTFILE='/tmp/include.xml'
rm $OUTPUTFILE

#"@LazyLoad" "@Modification.Classes" "@ObjectField.AnnotationProcessorClass" "@ObjectType.AnnotationProcessorClass" "@Recordable.Abstract" "@Recordable.BeanProperty" "@Recordable.BootstrapPackages" "@Recordable.BootstrapFollowReferences" "@Recordable.CollectionMaximum" "@Recordable.CollectionMinimum" "@Recordable.Denormalized" "@Recordable.DisplayName" "@Recordable.Embedded" "@Recordable.FieldInternalNamePrefix" "@Recordable.Ignored" "@Recordable.Indexed" "@Recordable.InternalName" "@Recordable.JunctionField" "@Recordable.JunctionPositionField" "@Recordable.LabelFields" "@Recordable.Maximum" "@Recordable.MimeTypes" "@Recordable.Minimum" "@Recordable.PreviewField" "@Recordable.Recalculate" "@Recordable.Regex" "@Recordable.Required" "@Recordable.SourceDatabaseClass" "@Recordable.SourceDatabaseName" "@Recordable.Step" "@Recordable.TypeId" "@Recordable.TypePostProcessorClasses" "@Recordable.Types" "@Recordable.TypesExclude" "@Recordable.Values" "@Recordable.Where" "@RoutingFilter.Path" "@UpdateTrackable.Names" 




declare -a arr=("Types of URLs" "Permalinks" "Multi-Site and URLs" "Manually Adding URLs" "Redirect URLs" "Redirecting to a Target Permalink" "Redirecting to a Target Vanity URL" "Wildcard URLs" "Deleting URLs")

#"@Content.Searchable" "@RichTextElement.Exclusive" "@RichTextElement.Tag" "@RichTextElement.Tags" "@Seo.DescriptionFields" "@Seo.KeywordsFields" "@Seo.OpenGraphType" "@Seo.TitleFields" "@ToolUi.BulkUpload" "@ToolUi.Cluster" "@ToolUi.ClusterDisplayOrder" "@ToolUi.ClusterDisplayOrders" "@ToolUi.CodeType" "@ToolUi.CollectionItemProgress" "@ToolUi.CollectionItemToggle" "@ToolUi.CollectionItemWeight" "@ToolUi.CollectionItemWeightColor" "@ToolUi.CollectionItemWeightMarker" "@ToolUi.ColorPicker" "@ToolUi.CompatibleTypes" "@ToolUi.CssClass" "@ToolUi.DefaultSearchResult" "@ToolUi.DefaultSortField" "@ToolUi.DisplayAfter" "@ToolUi.DisplayBefore" "@ToolUi.DisplayFirst" "@ToolUi.DisplayGlobalFilters" "@ToolUi.DisplayGrid" "@ToolUi.DisplayLast" "@ToolUi.DropDown" "@ToolUi.Expanded" "@ToolUi.FieldDisplayOrder" "@ToolUi.FieldDisplayType" "@ToolUi.FieldSorted" "@ToolUi.Filterable" "@ToolUi.GlobalFilter" "@ToolUi.Heading" "@ToolUi.Hidden" "@ToolUi.InputProcessorPath" "@ToolUi.InputSearcherPath" "@ToolUi.LanguageTag" "@ToolUi.LayoutField" "@ToolUi.LayoutPlaceholder" "@ToolUi.LayoutPlaceholders" "@ToolUi.Main" "@ToolUi.Note" "@ToolUi.NoteHtml" "@ToolUi.NoteRendererClass" "@ToolUi.OnlyPathed" "@ToolUi.Placeholder" "@ToolUi.Publishable" "@ToolUi.PublishButtonText" "@ToolUi.ReadOnly" "@ToolUi.RichText" "@ToolUi.Secret" "@ToolUi.Sortable" "@ToolUi.StoragePreviewProcessorPath" "@ToolUi.StorageSetting" "@ToolUi.SuggestedMaximum" "@ToolUi.SuggestedMinimum" "@ToolUi.Suggestions" "@ToolUi.Tab" "@ToolUi.TabDisplayOrder" "@ToolUi.Unlabeled" "Viewing a Model’s Available Annotations" "Using Expression Language in Annotations" 


#declare -a arr=("Overview" "Features")
for i in "${arr[@]}"
do
   echo "Processing $i"
   saxon -s:$INPUTFILE -xsl:include.xsl startingheading="$i" >> $OUTPUTFILE
done

echo "Output in $OUTPUTFILE"
cat $OUTPUTFILE
