<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:code/xhtml:span[@class='pre']">
        <code xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </code>

    </xsl:template>


    <xsl:template match="xhtml:span[@class='doc']">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="xhtml:a">
        <xsl:choose>
        <!-- Process a link to an internal target -->
            <xsl:when test="@class='reference internal'">
                <xsl:apply-templates />
            </xsl:when>
            <!-- Toss shareable links to interhal headers (the ones with the paragraph symbol) -->
            <xsl:when test="@class='headerlink'">
            </xsl:when>
            <!-- Links to external web sites-->
            <xsl:when test="@href and not(@class)">
                <xsl:element name="link" namespace="http://docbook.org/ns/docbook">
                    <xsl:attribute name="xlink:href"><xsl:value-of select="@href"/></xsl:attribute>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:message>WARNING: An a node was not processed</xsl:message>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:template>




    </xsl:transform>