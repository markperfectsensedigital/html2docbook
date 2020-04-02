<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo"
    xpath-default-namespace="http://www.w3.org/1999/xhtml">

<xsl:output indent="yes" method="text"/>
    <xsl:template match="/">
declare -a heading=(<xsl:apply-templates select="descendant::h1 | descendant::h2 | descendant::h3 | descendant::h4"/>)
    </xsl:template>

    <!-- Set the title from h1 -->
    <xsl:template match="h1 | h2 | h3 | h4">
            <xsl:value-of select="concat('&quot;',text(),'&quot; ')" />
    </xsl:template>

    

    <!--Suppress generic template -->
    <!-- <xsl:template match="text()"/> -->
</xsl:transform>