<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" 
    xmlns:e="http://ns.expertinfo.se/cms/xmlns/export/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo xlink e">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:dl[@class='glossary docutils']">
        <glossary xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </glossary>
    </xsl:template>


    <xsl:template match="xhtml:dt[parent::xhtml:dl[@class='glossary docutils']]">
        <glossentry xmlns="http://docbook.org/ns/docbook">
            <glossterm xmlns="http://docbook.org/ns/docbook">
                <xsl:value-of select="." />
            </glossterm>
            <xsl:apply-templates select="following-sibling::xhtml:dd[1]" mode="glossary" />

        </glossentry>
    </xsl:template>

    <xsl:template match="xhtml:dd" mode="glossary">
        <glossdef xmlns="http://docbook.org/ns/docbook">
            <xsl:choose>
                <xsl:when test="child::xhtml:p">
                    <xsl:apply-templates />
                </xsl:when>
                <xsl:otherwise>
                    <para xmlns="http://docbook.org/ns/docbook">
                        <xsl:apply-templates />
                    </para>
                </xsl:otherwise>
            </xsl:choose>
        </glossdef>
    </xsl:template>

    <!-- The following appear to be glossary entries in the Sphinx HTML, but are actually paragraphs -->

    <xsl:template match="xhtml:dl[@class='docutils']">
        <xsl:apply-templates />
    </xsl:template>


    <xsl:template match="xhtml:dt[parent::xhtml:dl[@class='docutils']]">
    <para xmlns="http://docbook.org/ns/docbook">
        <xsl:apply-templates />
        </para>
    </xsl:template>

    <xsl:template match="xhtml:dd[parent::xhtml:dl[@class='docutils']]">
    <para xmlns="http://docbook.org/ns/docbook">
        <xsl:apply-templates />
        </para>
    </xsl:template>

</xsl:transform>