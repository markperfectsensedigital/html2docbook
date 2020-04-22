<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" 
    xmlns:e="http://ns.expertinfo.se/cms/xmlns/export/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo xlink e">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:code/xhtml:span[@class='pre'] | xhtml:cite">
        <code xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </code>
    </xsl:template>


    <xsl:template match="xhtml:span[@class='doc']">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="xhtml:a">
        <xsl:message>
            <xsl:value-of select="."/>
        </xsl:message>
        <xsl:choose>
            <!-- Process a link to a glossary term -->
            <xsl:when test="@class='reference internal'/xhtml:span[class='xref std std-term']">
                <glossterm>
                    <xsl:value-of select="xhtml:span" />
                </glossterm>
            </xsl:when>
            <!-- Process a link to an internal target -->
            <xsl:when test="@class='reference internal'">
                <xsl:variable name="target_title" select="xhtml:span | ."/>
                <xsl:message>Target title <xsl:value-of select="$target_title"/>
                </xsl:message>
                <xsl:variable name="resources" select="document('resource-1.xml')//e:component[@title=$target_title]" />

                <xsl:variable name="resource_id" select="$resources/@id" />
                <xsl:message>Resource ID <xsl:value-of select="$resources/@id"/>
                </xsl:message>
                <xsl:element name="xref" namespace="xmlns:xlink">
                    <xsl:attribute name="xlink:href">
                        <xsl:value-of select="concat('urn:resource:component:',$resource_id)" />
                    </xsl:attribute>
                </xsl:element>
            </xsl:when>
            <!-- Toss shareable links to interhal headers (the ones with the paragraph symbol) -->
            <xsl:when test="@class='headerlink'">
            </xsl:when>
            <!-- Links to external web sites-->
            <xsl:when test="(@href and not(@class)) or (@href and (@class='reference external'))">
                <xsl:element name="link" namespace="http://docbook.org/ns/docbook">
                    <xsl:attribute name="xlink:href">
                        <xsl:value-of select="@href"/>
                    </xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="xhtml:em">

        <emphasis xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </emphasis>

    </xsl:template>


</xsl:transform>