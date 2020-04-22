<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:ol">
        <!-- If an <ol> has a previous sibling that starts with 'To ', then assume this <ol> starts a procedure. -->
        <xsl:choose>
            <xsl:when test="starts-with(./preceding-sibling::xhtml:p[1]/xhtml:strong,'To ')">
                <procedure xmlns="http://docbook.org/ns/docbook">
                    <title>
                        <xsl:value-of select="./preceding-sibling::xhtml:p[1]/xhtml:strong"/>
                    </title>
                    <xsl:apply-templates />
                </procedure>
            </xsl:when>
            <!-- All other <ol> starts an ordered list. -->
            <xsl:otherwise>
                <orderedlist xmlns="http://docbook.org/ns/docbook">
                    <xsl:apply-templates />
                </orderedlist>
            </xsl:otherwise>
        </xsl:choose>
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
    <xsl:template match="xhtml:ul | xhtml:div[@class='line-block']">
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

    <xsl:template match="xhtml:ol/xhtml:li | xhtml:div[@class='line-block']/xhtml:div[@class='line']">
        <!-- If an <li> is the child of an <ol> whose previous sibling <p>
    starts with 'To ', then assume this <li> is a <step> in a <procedure>. -->
        <xsl:choose>
            <xsl:when test="starts-with(../preceding-sibling::xhtml:p[1]/xhtml:strong,'To ')">
                <!-- <xsl:message>Entering li</xsl:message> -->
                <step xmlns="http://docbook.org/ns/docbook">
                    <para>
                        <xsl:apply-templates/>
                    </para>
                </step>
            </xsl:when>
            <!-- substeps in a procedure -->
            <xsl:when test="parent::xhtml:ol/parent::xhtml:li/parent::xhtml:ol">
                <!-- <xsl:message>Entering li</xsl:message> -->
                <step xmlns="http://docbook.org/ns/docbook">
                    <xsl:apply-templates/>
                </step>
            </xsl:when>

            <!-- In other cases, assume this <li> is a <listitem> in an ordered list. -->
            <xsl:when test="not(child::xhtml:p)">
                <listitem xmlns="http://docbook.org/ns/docbook">
                    <para xmlns="http://docbook.org/ns/docbook">
                        <xsl:apply-templates />
                    </para>
                </listitem>
            </xsl:when>
            <xsl:otherwise>
            <listitem xmlns="http://docbook.org/ns/docbook">
                <xsl:apply-templates/>
                </listitem>
            </xsl:otherwise>
        </xsl:choose>


    </xsl:template>

    <xsl:template match="xhtml:ul/xhtml:li">
        <listitem xmlns="http://docbook.org/ns/docbook">
            <para>
                <xsl:apply-templates />
            </para>
        </listitem>
    </xsl:template>

    <xsl:template match="xhtml:li" mode="stepalternatives">
        <!-- <xsl:message>Entering li</xsl:message> -->
        <step xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </step>
        <!-- <xsl:message>Exiting li</xsl:message> -->
    </xsl:template>




</xsl:transform>