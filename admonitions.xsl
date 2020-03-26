<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:div[starts-with(@class,'admonition')]">
    <xsl:choose>
    <xsl:when test="ends-with(@class,'tip')">
        <tip xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </tip>
    </xsl:when>
    <xsl:when test="ends-with(@class,'note')">
            <note xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </note>
    </xsl:when>
        <xsl:when test="ends-with(@class,'warning')">
            <warning xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </warning>
    </xsl:when>
        <xsl:when test="ends-with(@class,'caution')">
            <caution xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </caution>
    </xsl:when>
    <xsl:otherwise>
        <xsl:message>We found an admonition that has no template: <xsl:value-of select="@class"/></xsl:message>
    </xsl:otherwise>
    </xsl:choose>


    </xsl:template>


</xsl:transform>