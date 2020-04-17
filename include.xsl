<?xml version="1.0"?>
<!--

This transform creates a series of <xi:include> tags that you can paste
into the XML editor.

  <xi:include xmlns:xi="http://www.w3.org/2001/XInclude" parse="xml" href="UUID-8f0ad800-5957-21ab-d5d8-ba6cfbb314a3">
    <xi:fallback>
      <para xinfo:translate="no">Reusing topic #UUID-8f0ad800-5957-21ab-d5d8-ba6cfbb314a3</para>
    </xi:fallback>
  </xi:include>


-->
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:e="http://ns.expertinfo.se/cms/xmlns/export/1.0" 
    xmlns:xi="http://www.w3.org/2001/XInclude" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0"
    exclude-result-prefixes="e xi xinfo">

    <xsl:output indent="yes" method="xml" omit-xml-declaration="yes"/>
 
    <xsl:param name="startingheading"/>

    <xsl:template match="/">
        <xsl:apply-templates select="descendant::e:component" />
    </xsl:template>

    <xsl:template match="e:component[@title=$startingheading]">
        <xsl:element name="xi:include">
            <xsl:attribute name="parse" select="'xml'"/>
            <xsl:attribute name="href" select="@uuid"/>
            <xi:fallback>
                <xsl:element name="para">
                    <xsl:attribute name="translate" namespace="xinfo">no</xsl:attribute>
                    <xsl:value-of select="concat('Reusing topic #',@uuid)"/>
                </xsl:element>
            </xi:fallback>
        </xsl:element>
    </xsl:template>
</xsl:transform>