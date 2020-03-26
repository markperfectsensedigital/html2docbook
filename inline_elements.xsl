<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:code/xhtml:span[@class='pre']">
    <code xmlns="http://docbook.org/ns/docbook">
        <xsl:apply-templates />
    </code>
   
    </xsl:template>


</xsl:transform>