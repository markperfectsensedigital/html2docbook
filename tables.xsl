<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <xsl:template match="xhtml:table">
    <xsl:choose>
<xsl:when test="xhtml:caption">
        <table xmlns="http://docbook.org/ns/docbook" frame="border" rules="all">
        <caption>
            <xsl:value-of select="caption/span"/>
        </caption>
            <xsl:apply-templates />
        </table>
</xsl:when>
<xsl:otherwise>
        <informaltable xmlns="http://docbook.org/ns/docbook" frame="border" rules="all">
            <xsl:apply-templates />
        </informaltable>
</xsl:otherwise>
    </xsl:choose>
    </xsl:template>


    <xsl:template match="xhtml:colgroup">
     <!-- Would prefer to use xsl:copy-of here and in other places,
     but due to a namespace change
     that seems to be not allowed
         xsl:copy-of select="." copy-namespaces="no" /-->
        <colgroup xmlns="http://docbook.org/ns/docbook">
       <xsl:apply-templates />
       </colgroup>
    </xsl:template>

    <xsl:template match="xhtml:col">
     <xsl:element xmlns="http://docbook.org/ns/docbook" name="col">
        <xsl:attribute name="width">
            <xsl:value-of select="@width"/>
        </xsl:attribute>
     </xsl:element>
    </xsl:template>
    

    <xsl:template match="xhtml:thead">
        <thead xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </thead>
    </xsl:template>

    <xsl:template match="xhtml:tr">
        <tr xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </tr>
    </xsl:template>

    <xsl:template match="xhtml:th">
        <th xmlns="http://docbook.org/ns/docbook">
        <para xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
            </para>
        </th>
    </xsl:template>


    <xsl:template match="xhtml:tbody">
        <tbody xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </tbody>
    </xsl:template>

    <xsl:template match="xhtml:td">
        <td xmlns="http://docbook.org/ns/docbook">
        <xsl:if test="@colspan > 1">
                <xsl:attribute name="colspan"><xsl:value-of select="@colspan"/></xsl:attribute>
        </xsl:if>

        <para xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
            </para>
        </td>
    </xsl:template>


</xsl:transform>