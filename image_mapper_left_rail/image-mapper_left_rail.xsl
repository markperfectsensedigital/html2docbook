<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:omg="http://www.lautman.net" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="omg">

    <xsl:output indent="yes" method="xml" omit-xml-declaration="yes"/>


    <xsl:template match="/">
        <xsl:apply-templates select="descendant::ul[@class='fb-filelist']" />
    </xsl:template>


    <xsl:template match="ul">
        <xsl:apply-templates select="descendant::li"/>
    </xsl:template>

    <xsl:template match="li">

        <xsl:element name="xsl:when" namespace="omg">
            <xsl:attribute name="test">
                <xsl:value-of select="concat('$filename=''',@data-item-title,'''')" />
            </xsl:attribute>
            <xsl:value-of select="@data-uuid" />
        </xsl:element>

        <!-- <xsl:value-of select="./@data-item-title" /> -->
        <!-- <xsl:message><xsl:value-of select="@data-uuid"/></xsl:message> -->
        <!-- <xsl:element name="xsl:when">
            <xsl:attribute name="test" select="concat('$filename=''',child::td[2]/span/a/@data-image-title,'''')"/>
            <xsl:value-of select="@data-uuid" />
        </xsl:element> -->
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:transform>