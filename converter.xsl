<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:include href="tables.xsl"/>
    <xsl:include href="images.xsl"/>
    <xsl:output indent="yes" method="xml"/>

    <xsl:variable name="topic_title" select="substring-before(/xhtml:html/xhtml:head/xhtml:title,' &#8212; Brightspot Docs')" />
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

    <!-- If the <p> is followed by an <ol>, then we assume that this paragraph starts a procedure. 
    That scenario is processed in a different template.
-->
    <xsl:template match="xhtml:p[not(starts-with(./child::xhtml:strong[1],'To '))]">
        <para xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </para>
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

<!-- Lists -->

    <!-- Assume an <ol> that is a sibling a <p><strong> starts a procedure. -->
    <xsl:template match="xhtml:ol[./preceding-sibling::xhtml:p[1]/xhtml:strong]">
        <!-- <xsl:message>Entering OL</xsl:message> -->
        <procedure xmlns="http://docbook.org/ns/docbook">
            <title>
                <xsl:value-of select="./preceding-sibling::xhtml:p[1]/xhtml:strong"/>
            </title>
            <xsl:apply-templates />
        </procedure>
        <!-- <xsl:message>Exiting OL</xsl:message> -->
    </xsl:template>

    <!-- Assume an <ol> that is a child of <ol><li> is a list of substeps -->
    <xsl:template match="xhtml:ol/xhtml:li/xhtml:ol">
        <!-- <xsl:message>Entering OL</xsl:message> -->
        <substeps xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </substeps>
        <!-- <xsl:message>Exiting OL</xsl:message> -->
    </xsl:template>


    <xsl:template match="xhtml:ul[preceding-sibling::xhtml:p[1]/xhtml:strong]">
        <itemizedlist xmlns="http://docbook.org/ns/docbook">
            <title>
                <xsl:value-of select="./preceding-sibling::xhtml:p[1]/xhtml:strong"/>
            </title>
            <xsl:apply-templates />
        </itemizedlist>
           </xsl:template>
    <xsl:template match="xhtml:ul">
        <!-- <xsl:message>Entering itemized list</xsl:message> -->
        <itemizedlist xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </itemizedlist>
    </xsl:template>

    <xsl:template match="xhtml:ol/xhtml:li/xhtml:ul">
        <xsl:message>Entering itemized list</xsl:message>
        <stepalternatives xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </stepalternatives>
    </xsl:template>

    <xsl:template match="xhtml:ol/xhtml:li">
        <!-- <xsl:message>Entering li</xsl:message> -->
        <step xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates/>
        </step>
    </xsl:template>

    <xsl:template match="xhtml:ul/xhtml:li">
        <listitem xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </listitem>
    </xsl:template>

    <xsl:template match="xhtml:li" mode="stepalternatives">
        <!-- <xsl:message>Entering li</xsl:message> -->
        <step xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </step>
        <!-- <xsl:message>Exiting li</xsl:message> -->
    </xsl:template>

    <xsl:template match="xhtml:span[@class='doc']">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="xhtml:a[@class='reference internal']">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="xhtml:ol/xhtml:li/xhtml:img">
        <mediaobject xmlns="http://docbook.org/ns/docbook">
            <imageobject>
            <xsl:element name="imagedata">
            <xsl:attribute name="fileref">UUID-384623b7-d82a-a689-fe28-db43d5b5a0c4</xsl:attribute>
             <xsl:attribute name="image" namespace="xinfo">UUID-384623b7-d82a-a689-fe28-db43d5b5a0c4</xsl:attribute>
            </xsl:element>
            </imageobject>
        </mediaobject>
        <xsl:apply-templates />
    </xsl:template>



    <!--Suppress generic template -->
    <!-- <xsl:template match="text()"/> -->
</xsl:transform>