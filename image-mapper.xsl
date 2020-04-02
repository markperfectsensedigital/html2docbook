<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0"
    exclude-result-prefixes="xhtml xinfo">

    <xsl:output indent="yes" method="xml" omit-xml-declaration="yes"/>


    <xsl:template match="/">
        <xsl:apply-templates select="descendant::xhtml:table" />
    </xsl:template>

    <xsl:template match="xhtml:table">
        <xsl:apply-templates  />
    </xsl:template>


    <xsl:template match="xhtml:tbody">
        <xsl:apply-templates  />
    </xsl:template>

    <xsl:template match="xhtml:tr[@data-uuid]">
    <!-- <xsl:message><xsl:value-of select="@data-uuid"/></xsl:message> -->
        <xsl:element name="xsl:when">
            <xsl:attribute name="test" select="concat('$filename=''',child::xhtml:td[2]/xhtml:span/xhtml:a/@data-image-title,'''')"/>
            <xsl:value-of select="@data-uuid" />
        </xsl:element>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:transform>