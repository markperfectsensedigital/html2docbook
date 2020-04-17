<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo" xpath-default-namespace="http://www.w3.org/1999/xhtml">

    <xsl:template match="/">
        <html>
            <head>
                <title>Import file</title>
            </head>
            <body>
                <xsl:apply-templates select="descendant::xhtml:div[@class='Content-document']/xhtml:div[@class='section']" />
            </body>
        </html>
    </xsl:template>

    <!-- The content in a topic starts at an element <div class="Content-document">/<div class="section> -->
    <xsl:template match="xhtml:div[@class='section']">

        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="h1">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>

    <xsl:template match="h2">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>

    <xsl:template match="h3">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>


    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="xhtml:code[contains(@class,'docutils literal notranslate')]/xhtml:span[@class='pre']">
        <code>
            <xsl:apply-templates/>
        </code>
    </xsl:template>


    <xsl:template match="a[@class='headerlink']">
    </xsl:template>

    <xsl:template match="a[@class='reference external']">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@href"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>


    <xsl:template match="xhtml:div[starts-with(@class,'highlight-')]">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="xhtml:div[@class='highlight']">
        <pre>
            <xsl:apply-templates/>
        </pre>
    </xsl:template>

    <xsl:template match="xhtml:pre">
        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="xhtml:ul">
        <ul>
            <xsl:apply-templates/>
        </ul>
    </xsl:template>


    <xsl:template match="xhtml:li">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>

    <xsl:template match="xhtml:a[@class='reference internal']/xhtml:span[@class='doc']">
        INTNERAL LINK TO <xsl:value-of select="."/>
    </xsl:template>


    <xsl:template match="xhtml:div[@class='admonition note']">
        <xsl:element name="div">
            <xsl:attribute name="class" select="'note'"/>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>

    <xsl:template match="xhtml:dl">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="xhtml:dt">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="xhtml:dd">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="xhtml:div[@class='line']">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="xhtml:strong">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>


    <!-- Tables for layout -->

    <xsl:template match="xhtml:table">
        <table>
            <xsl:apply-templates/>
        </table>
    </xsl:template>

    <xsl:template match="xhtml:colgroup">
        <colgroup>
           <xsl:apply-templates />
        </colgroup>
    </xsl:template>

    <xsl:template match="xhtml:col">
    <xsl:element name="col">

       <xsl:attribute name="width">
       <xsl:value-of select="@width" />
       </xsl:attribute>
        </xsl:element>
    </xsl:template>

    <xsl:template match="xhtml:thead">
        <thead>
            <xsl:apply-templates/>
        </thead>
    </xsl:template>
    <xsl:template match="xhtml:th">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>



    <xsl:template match="xhtml:tr">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>


    <xsl:template match="xhtml:td">
    <xsl:choose>
    <xsl:when test="@colspan">
    <xsl:element name="td">
    <xsl:attribute name="colspan" select="@colspan"/>
    <xsl:apply-templates/>
    </xsl:element>
    </xsl:when>
    <xsl:otherwise>
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:otherwise>
    </xsl:choose>

    </xsl:template>




    <!-- Tables for code samples -->
    <xsl:template match="xhtml:table[@class='highlighttable']">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="xhtml:tr[parent::xhtml:table[@class='highlighttable']]">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="xhtml:td[@class='code']">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="xhtml:td[@class='linenos']">
    </xsl:template>

    <xsl:template match="xhtml:img">
        <img src="omg.png" />

        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="xhtml:ol[@class='arabic simple']">
        <orderedlist>
            <xsl:apply-templates/>
        </orderedlist>
    </xsl:template>


    <!-- 
      <xsl:template match="xhtml:td[@class='code']/xhtml:div[@class='highlight']/xhtml:pre">
      <xsl:apply-templates/>
    </xsl:template> -->
    <!--Suppress generic template -->
    <!-- <xsl:template match="text()"/> -->
</xsl:transform>