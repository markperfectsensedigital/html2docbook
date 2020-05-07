#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "make_crossref.sh <topicid> [<targetid>]"
    exit
fi

XREF="urn:resource:component:$1"

if [ "$#" -eq 2 ]; then
    XREF="$XREF/$2"
fi

echo $XREF