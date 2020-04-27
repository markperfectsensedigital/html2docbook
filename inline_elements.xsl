<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:omg="http://www.lautman.net" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" 
    xmlns:e="http://ns.expertinfo.se/cms/xmlns/export/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo xlink e omg">
    <xsl:include href="glossary_variables.xsl"/>
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:code/xhtml:span[@class='pre'] | xhtml:cite">
        <code xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </code>
    </xsl:template>

    <xsl:template match="xhtml:a">
        <!-- <xsl:message>
            <xsl:value-of select="."/>
        </xsl:message> -->
        <xsl:choose>
            <!-- Process a link to a glossary term -->
            <xsl:when test="@class='reference internal' and xhtml:span[@class='xref std std-term']">

                <xsl:variable name="baseform">
                    <xsl:value-of select="omg:get_baseform(@href)"/>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$baseform='WARNING'">
                        <glossterm xmlns="http://docbook.org/ns/docbook">
                    NEED GLOSSARY TERM FOR <xsl:value-of select="."/>
                        </glossterm>
                    </xsl:when>
                    <xsl:when test="$baseform = .">
                        <glossterm xmlns="http://docbook.org/ns/docbook">
                            <xsl:value-of select="." />
                        </glossterm>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="glossterm" namespace="http://docbook.org/ns/docbook">
                            <xsl:attribute name="baseform">
                                <xsl:value-of select="$baseform"/>
                            </xsl:attribute>
                            <xsl:value-of select="." />
                        </xsl:element>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:when>
            <!-- Process a link to an internal target -->
            <xsl:when test="@class='reference internal' and (xhtml:span[@class='std std-ref'] or xhtml:span[@class='doc'])">
                <xsl:variable name="target_title" select="xhtml:span"/>
                <!-- <xsl:message>target_title: <xsl:value-of select="$target_title"/></xsl:message>
                <xsl:variable name="resources" select="document('resource-1.xml')//e:resource/e:component[@title=$target_title]" />
                <xsl:message>resources: <xsl:value-of select="$resources"/></xsl:message>
                <xsl:variable name="resource_id" select="$resources/@id" />
                 <xsl:message>resources_id <xsl:value-of select="$resource_id"/></xsl:message> -->
                <xsl:variable name="resource_id" select="document('resource-9821.xml')//e:folder/e:component[@title=$target_title]/@id" />
                <!-- <xsl:message>resource_id <xsl:value-of select="$resource_id"/></xsl:message>
                <xsl:message>Count of resource ID <xsl:value-of select="count($resource_id)"/></xsl:message>
                <xsl:if test="count($resource_id) > 1">
                <xsl:message>WARNING: Multiple targets for <xsl:value-of select="$target_title"/></xsl:message>
                </xsl:if> -->
                <xsl:element name="xref" namespace="xmlns:xlink">
                    <xsl:attribute name="xlink:href">
                        <xsl:value-of select="concat('urn:resource:component:',$resource_id | $resource_id[0])" />
                    </xsl:attribute>
                </xsl:element>
            </xsl:when>
            <!-- Process a link to an internal target -->
            <!-- <xsl:when test="@class='reference internal'">
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
            </xsl:when> -->
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