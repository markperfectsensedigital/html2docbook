<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo"
    xpath-default-namespace="http://www.w3.org/1999/xhtml">

    <xsl:output indent="yes" method="text"/>

   

    <xsl:template match="/">

     <xsl:apply-templates select="descendant::xhtml:div[@class='Content-document']"/>
    </xsl:template>

     <xsl:template match="xhtml:div[@class='Content-document']">
     <xsl:apply-templates/>
     
    </xsl:template>


    <!--Suppress generic template -->
    <!-- <xsl:template match="text()"/> -->
</xsl:transform>