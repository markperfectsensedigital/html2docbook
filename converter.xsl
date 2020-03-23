<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" version="2.0" exclude-result-prefixes="xhtml">
    <xsl:output indent="yes" method="xml"/>

    <!--xsl:variable name="topic_title" select="//xhtml:div[@class='Content-document']/xhtml:div[@class='section']/xhtml:h1" /-->
    <xsl:variable name="topic_title" select="substring-before(/xhtml:html/xhtml:head/xhtml:title,' &#8212; Brightspot Docs')" />
    <xsl:template match="/">
        <xsl:element name="section" namespace="http://docbook.org/ns/docbook">
            <!--xsl:attribute name="xmlns">http://docbook.org/ns/docbook</xsl:attribute-->
            <xsl:attribute name="xinfo" namespace="xmlns">http://ns.expertinfo.se/cms/xmlns/1.0</xsl:attribute>
            <xsl:attribute name="version">5.0</xsl:attribute>
            <xsl:attribute name="lang" namespace="xml">en</xsl:attribute>
            <xsl:attribute name="resource-type" namespace="xinfo">component</xsl:attribute>
            <xsl:attribute name="resource-title" namespace="xinfo">
                <xsl:value-of select="$topic_title"/>
            </xsl:attribute>
            <xsl:attribute name="resource-titlelabel" namespace="xinfo"/>
            <xsl:attribute name="version-major" namespace="xinfo">2</xsl:attribute>
            <xsl:attribute name="version-minor" namespace="xinfo">0</xsl:attribute>

            <xsl:apply-templates select="//xhtml:div[@class='Content-document']" />
        </xsl:element>
    </xsl:template>

    <!-- The content in a topic starts at an element <div class="Content-document">/<div class="section> -->
    <xsl:template match="xhtml:div[@class='Content-document']">
        <xsl:apply-templates select="child::xhtml:div[@class='section']" />
    </xsl:template>

    <xsl:template match="xhtml:div[@class='section']">
        <xsl:apply-templates />

    </xsl:template>

    <!-- Set the title from h1 -->
    <xsl:template match="xhtml:h1">
        <xsl:element name="title" namespace="http://docbook.org/ns/docbook">
            <xsl:value-of select="./text()" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="xhtml:p">
        <xsl:message>
            <xsl:value-of select="."/>
        </xsl:message>
        <xsl:choose>
            <!-- If a p element has a child strong element, then assume we started a procedure. -->
            <xsl:when test="starts-with(./xhtml:strong[1]/text(),'To ')">
                <procedure xmlns="http://docbook.org/ns/docbook">
                    <title>
                        <xsl:value-of select="./xhtml:strong"/>
                    </title>
                    <xsl:apply-templates select="./following-sibling::xhtml:ol[1]"/>
                </procedure>
            </xsl:when>
            <xsl:otherwise>
                <para xmlns="http://docbook.org/ns/docbook">
                    <xsl:value-of select="." />
                </para>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    <xsl:template match="xhtml:strong[not(starts-with(.,'To '))]">
        <xsl:message>
            <xsl:value-of select="."/>
        </xsl:message>
        <!-- If a strong element starts with "To ", then assume we are starting a procedure. -->
        <emphasis xmlns="http://docbook.org/ns/docbook" role="bold">
            <xsl:value-of select="."/>
        </emphasis>
    </xsl:template>

    <xsl:template match="xhtml:ol">
        <xsl:message>Entering OL</xsl:message>
        <xsl:apply-templates mode="procedure"/>
        <xsl:message>Exiting OL</xsl:message>
    </xsl:template>

    <xsl:template match="xhtml:li" mode="procedure">
        <xsl:message>Entering li</xsl:message>
        <step xmlns="http://docbook.org/ns/docbook">

            <xsl:apply-templates />

        </step>
        <xsl:message>Exiting li</xsl:message>
    </xsl:template>



    <!--Suppress generic template -->
    <xsl:template match="text()"/>
</xsl:transform>