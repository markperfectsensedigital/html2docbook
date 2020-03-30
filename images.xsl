<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xhtml="http://www.w3.org/1999/xhtml" 
  xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
  <xsl:output indent="yes" method="xml"/>


  <xsl:template match="xhtml:div[@class='figure']">
    <informalfigure>
      <mediaobject>
        <imageobject>
          <imagedata fileref="UUID-c5e34f79-3513-6bf3-fc0a-5d8fff4d0e76" width="486" xinfo:image="UUID-c5e34f79-3513-6bf3-fc0a-5d8fff4d0e76"/>
        </imageobject>
        <caption>
          <para>
            <xsl:value-of select="xhtml:p/xhtml:span[@class='caption-text']" />
          </para>
        </caption>
      </mediaobject>
    </informalfigure>

  </xsl:template>

  <xsl:template match="xhtml:img">
    <xsl:variable name="UUID">
      <xsl:call-template name="get_uuid">
        <xsl:with-param name="filename" select="substring-after(@src,'_images/')"/>
      </xsl:call-template>
    </xsl:variable>
    <mediaobject xmlns="http://docbook.org/ns/docbook">
      <imageobject>
        <xsl:element name="imagedata">
          <xsl:attribute name="fileref">
            <xsl:value-of select="$UUID"/>
          </xsl:attribute>
          <xsl:attribute name="xinfo:image">
            <xsl:value-of select="$UUID"/>
          </xsl:attribute>
        </xsl:element>
      </imageobject>
    </mediaobject>
    <xsl:apply-templates />
  </xsl:template>


</xsl:transform>