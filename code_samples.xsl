<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <!-- Start of a code sample with a caption -->
    <xsl:template match="xhtml:div[@class='literal-block-wrapper docutils container']">
        <example xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </example>
    </xsl:template>

    <!-- Caption for a code listing -->
    <xsl:template match="xhtml:div[@class='code-block-caption']/xhtml:span[@class='caption-text']">
        <title xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </title>

    </xsl:template>


    <!-- Code sample, no highlighting or heading or numbers -->
    <xsl:template match="xhtml:div[@class='highlight-xml notranslate']/xhtml:div[@class='highlight']/xhtml:pre">
        <programlisting xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </programlisting>

    </xsl:template>



</xsl:transform>