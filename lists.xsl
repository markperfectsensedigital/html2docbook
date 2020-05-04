<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:ol">
        <!-- If an <ol> has a previous sibling that starts with 'To ', then assume this <ol> starts a procedure. -->
        <!-- <xsl:message>Preceding: <xsl:value-of select="./preceding-sibling::xhtml:p[1]/xhtml:strong"/></xsl:message> -->

        <procedure xmlns="http://docbook.org/ns/docbook">
            <xsl:if test="starts-with(./preceding-sibling::xhtml:p[1]/xhtml:strong[1],'To ')">
                <title>
                    <xsl:value-of select="./preceding-sibling::xhtml:p[1]/xhtml:strong"/>
                </title>
            </xsl:if>
            <xsl:apply-templates />
        </procedure>
    </xsl:template>


    <!-- Assume an <ol> that is a child of <ol><li> is a list of substeps -->
    <xsl:template match="xhtml:ol/xhtml:li/xhtml:ol">
        <!-- <xsl:message>Entering OL</xsl:message> -->
        <substeps xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </substeps>
        <!-- <xsl:message>Exiting OL</xsl:message> -->
    </xsl:template>

    <!-- See also list -->
    <xsl:template match="xhtml:ul[preceding-sibling::xhtml:p[1]/xhtml:strong and string-length(preceding-sibling::xhtml:p[1]) = 1]">
        <itemizedlist xmlns="http://docbook.org/ns/docbook">
            <title xmlns="http://docbook.org/ns/docbook">
                <xsl:choose>
                    <xsl:when test="preceding-sibling::xhtml:p[1]/xhtml:strong/text() = 'See also:'">
                        <xsl:element name="phrase">
                            <xsl:attribute name="varset" namespace="xinfo">446</xsl:attribute>
                            <xsl:attribute name="variable" namespace="xinfo">6</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="./preceding-sibling::xhtml:p[1]/xhtml:strong"/>
                    </xsl:otherwise>
                </xsl:choose>
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
        <!-- <xsl:message>Entering itemized list</xsl:message> -->
        <stepalternatives xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates mode="stepalternatives" />
        </stepalternatives>
    </xsl:template>

    <xsl:template match="xhtml:ol/xhtml:li[string-length(text()[1]) = 1]">
        <!-- <xsl:message>This li has YES text and its value is  <xsl:value-of select="string-length(text()[1])"/>
        </xsl:message> -->

        <step xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates/>
        </step>
    </xsl:template>

    <xsl:template match="xhtml:ol/xhtml:li[string-length(text()[1]) > 1]">
        <!-- <xsl:message>This li has NO text and its value is <xsl:value-of select="string-length(text()[1])"/>
        </xsl:message> -->
        <step xmlns="http://docbook.org/ns/docbook">
            <para>
                <xsl:apply-templates/>
            </para>
        </step>
    </xsl:template>

    <xsl:template match="xhtml:ul/xhtml:li">
        <listitem xmlns="http://docbook.org/ns/docbook">
            <para>
                <xsl:apply-templates />
            </para>
        </listitem>
    </xsl:template>

        <xsl:template match="xhtml:ul/xhtml:li" mode="stepalternatives">
        <step xmlns="http://docbook.org/ns/docbook">
            <para>
                <xsl:apply-templates />
            </para>
        </step>
    </xsl:template>

</xsl:transform>