<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
   
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="/">
    <xsl:message>Here</xsl:message>
    <xsl:apply-templates select="descendant::xhtml:table" />
    </xsl:template>
    
      <xsl:template match="xhtml:table">
         <xsl:message>Table</xsl:message>
       <xsl:apply-templates  />
    </xsl:template>


      <xsl:template match="xhtml:tbody">
       <xsl:apply-templates  />
    </xsl:template>

      <xsl:template match="xhtml:tr">
        
       <xsl:value-of select="@data-uuid" /><xsl:value-of select="child::xhtml:td[2]/xhtml:span/xhtml:a/@data-image-title" />
    </xsl:template>

</xsl:transform>