<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" version="2.0">
    <xsl:output indent="yes" method="xml"/>

    <xsl:variable name="topic_title" select="//div[@class='Content-document']/div[@class='section']/h1/text()" />
    <xsl:template match="/">
        <section xmlns="http://docbook.org/ns/docbook" 
            xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="5.0" xml:lang="en" xinfo:resource-type="component" xinfo:resource-title="Bulk editing" xinfo:resource-titlelabel="" xinfo:version-major="2" xinfo:version-minor="0">
            <xsl:apply-templates select="//xhtml:div[@class='Content-document']" />
        </section>
    </xsl:template>


    <xsl:template match="xhtml:div[@class='Content-document']">
        <xsl:apply-templates select="child::xhtml:div[@class='section']" />
    </xsl:template>

    <xsl:template match="xhtml:div[@class='section']">
        <xsl:apply-templates />

    </xsl:template>

    <xsl:template match="xhtml:h1">
        <title xmlns="http://docbook.org/ns/docbook">
            <xsl:value-of select="./text()" />
        </title>
    </xsl:template>
   <xsl:template match="xhtml:p">
    <xsl:choose>
        <xsl:when test="./xhtml:strong">
            <procedure xmlns="http://docbook.org/ns/docbook">
                <title xmlns="http://docbook.org/ns/docbook">
                    <xsl:value-of select="."/>
                </title>
                <xsl:apply-templates />
            </procedure>
        </xsl:when>
        <xsl:otherwise>
            <para xmlns="http://docbook.org/ns/docbook">
                <xsl:value-of select="." />
            </para>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>


    <xsl:template match="xhtml:strong">
        <xsl:message>
            <xsl:value-of select="."/>
        </xsl:message>
        <xsl:choose>
            <xsl:when test="starts-with(.,'To ')">
                <xsl:message>Found barf </xsl:message>

                <procedure xmlns="http://docbook.org/ns/docbook">
                    <title xmlns="http://docbook.org/ns/docbook">
                        <xsl:value-of select="."/>
                    </title>
                    <xsl:apply-templates />
                </procedure>
            </xsl:when>
            <xsl:otherwise>
                <emphasis xmlns="http://docbook.org/ns/docbook" role="bold">
                    <xsl:value-of select="."/>
                </emphasis>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="text()"/>
</xsl:transform>