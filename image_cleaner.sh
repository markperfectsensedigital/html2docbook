#!/bin/bash

./cleanit.py images.html && saxon -s:cleanfile.html -xsl:image-mapper.xsl


