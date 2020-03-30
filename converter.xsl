<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:include href="tables.xsl"/>
    <xsl:include href="images.xsl"/>
    <xsl:include href="inline_elements.xsl"/>
    <xsl:include href="code_samples.xsl"/>
    <xsl:include href="lists.xsl"/>
    <xsl:include href="admonitions.xsl"/>
    <xsl:include href="image_variables.xsl"/>
    <xsl:output indent="yes" method="xml"/>

    <xsl:param name="startingheading"/>
    <xsl:variable name="topic_title">
        <xsl:choose>
            <xsl:when test="string-length($startingheading) > 0">
                <xsl:value-of select="$startingheading"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="substring-before(/xhtml:html/xhtml:head/xhtml:title,' &#8212; Brightspot Docs')"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>


    <xsl:template match="/">

        <xsl:element name="section" namespace="http://docbook.org/ns/docbook">
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
        <xsl:choose>
            <xsl:when test="string-length($startingheading) = 0">
                <xsl:apply-templates  />
            </xsl:when>
            <xsl:otherwise>
                <!-- <xsl:message>Matching nodes: <xsl:value-of select="generate-id(descendant::*[text()=$topic_title][1]/..)" />
                </xsl:message> -->
                <xsl:apply-templates select="descendant::*[text()=$topic_title][1]/.." />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="xhtml:div[@class='section']" >
        <xsl:message>In first heading</xsl:message>
        <xsl:apply-templates select="child::* except child::xhtml:div[@class='section']"/>
    </xsl:template>



    <!-- Set the title from h1 -->
    <xsl:template match="xhtml:h1|xhtml:h2|xhtml:h3|xhtml:h4">
        <xsl:element name="title" namespace="http://docbook.org/ns/docbook">
            <xsl:value-of select="text()" />
        </xsl:element>

    </xsl:template>

    <!-- If the <p> is followed by an <ol>, then we assume that this paragraph starts a procedure. 
    That scenario is processed in a different template.
-->
    <!-- <xsl:template match="xhtml:p[not(starts-with(./child::xhtml:strong[1],'To '))]"> -->
    <xsl:template match="xhtml:p">
        <xsl:choose>
            <xsl:when test="(starts-with(./child::xhtml:strong[1],'To ')) or 
            (@class = 'first admonition-title')">
            </xsl:when>
            <xsl:otherwise>
                <para xmlns="http://docbook.org/ns/docbook">
                    <xsl:apply-templates />
                </para>
            </xsl:otherwise>
        </xsl:choose>


    </xsl:template>

    <!-- Different templates for different <strong> contexts.
    If the <strong> starts with 'To ' (as in 'To create an article'), then
    we assume that this <strong> starts a procedure. That scenario is processed 
    in a different template.

    If the <Strong> starts with a 'See also:', then we assume we are listing
    cross references to other topics. We replace that 'See also:' with a Docbook
    reference to a variable that contains the text "See also."

    Otherwise, output the node in an <emphasis> tag.
-->
    <xsl:template match="xhtml:strong[not(starts-with(.,'To '))]">
        <xsl:choose>
            <xsl:when test="./text() = 'See also:'">
                <xsl:element name="phrase">
                    <xsl:attribute name="varset" namespace="xinfo">446</xsl:attribute>
                    <xsl:attribute name="variable" namespace="xinfo">6</xsl:attribute>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <emphasis xmlns="http://docbook.org/ns/docbook" role="bold">
                    <xsl:apply-templates />
                </emphasis>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!--Suppress generic template -->
    <!-- <xsl:template match="text()"/> -->
</xsl:transform>