<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0" exclude-result-prefixes="xhtml xinfo">
    <xsl:output indent="yes" method="xml"/>


    <!-- Start of a code sample with a caption -->
    <xsl:template match="xhtml:div[@class='literal-block-wrapper docutils container']">
        <example xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </example>
    </xsl:template>

    <!-- Caption for a code listing -->
    <xsl:template match="xhtml:div[@class='code-block-caption']/xhtml:span[@class='caption-text']">
        <title xmlns="http://docbook.org/ns/docbook">
            <xsl:apply-templates />
        </title>
    </xsl:template>

    <!-- Code sample, no highlighting or heading or numbers -->
    <xsl:template match="xhtml:div[matches(@class,'highlight-\S+ notranslate')]/xhtml:div[@class='highlight']/xhtml:pre">
        <xsl:variable name="language">
            <xsl:call-template name="get_language">
                <xsl:with-param name="longlanguage" select="../../@class"/>
            </xsl:call-template>
        </xsl:variable>

        <!-- <xsl:message>
            <xsl:value-of select="../../@class"/>
        </xsl:message>
        <xsl:message>
            <xsl:value-of select="concat($language-class[1],' ',$highlightlanguage,' ',$language)"/>
        </xsl:message> -->
        <programlisting xmlns="http://docbook.org/ns/docbook">
            <xsl:attribute name="language">
                <xsl:value-of select="$language" />
            </xsl:attribute>
            <xsl:apply-templates />
        </programlisting>
    </xsl:template>

    <!-- Code sample, line numbering -->
    <xsl:template match="xhtml:div[matches(@class,'highlight-\S+ notranslate')]/xhtml:table[@class='highlighttable']">
        <xsl:apply-templates select="xhtml:tr" mode="codesamples" />
    </xsl:template>

    <xsl:template match="xhtml:tr" mode="codesamples">
        <xsl:apply-templates mode="codesamples"/>
    </xsl:template>

    <!-- Toss cells with line numbering -->
    <xsl:template match="xhtml:td[@class='linenos']" mode="codesamples"/>

    <!-- Extract the code from a table cell. -->
    <xsl:template match="xhtml:td[@class='code']/xhtml:div[@class='highlight']/xhtml:pre" mode="codesamples">
        <xsl:variable name="language">
            <xsl:call-template name="get_language">
                <xsl:with-param name="longlanguage" select="ancestor::xhtml:div[2]/@class"/>
            </xsl:call-template>
        </xsl:variable>

        <programlisting xmlns="http://docbook.org/ns/docbook">
            <xsl:attribute name="language">
                <xsl:value-of select="$language" />
            </xsl:attribute>
            <xsl:for-each select=".//text()">
                <!-- <xsl:message>Here is code</xsl:message> -->
                <xsl:value-of select="."/>
            </xsl:for-each>
        </programlisting>
    </xsl:template>

    <xsl:template name="get_language">
        <!-- Extracts the language from an element such as <div class="highlight-java notranslate"> -->
        <xsl:param name="longlanguage"/>
        <xsl:variable name="language-class" select="tokenize($longlanguage,' ')"/>
        <xsl:variable name="highlightlanguage" select="$language-class[1]" />
        <xsl:value-of select="substring-after($highlightlanguage,'highlight-')" />
    </xsl:template>

</xsl:transform>