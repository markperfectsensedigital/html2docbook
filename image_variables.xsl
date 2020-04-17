<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0">

    <xsl:template name = "get_uuid">
        <xsl:param name = "filename" />
        <xsl:choose>
            <!-- 3.3, glossary -->
            <xsl:when test="$filename='action-bar.svg'">UUID-d9bab1c0-071b-513e-c1d1-1bbbd29f0867</xsl:when>
            <xsl:when test="$filename='aspect-ratio.svg'">UUID-0680e74d-56a4-6fdd-b86a-81d7daaa88e4</xsl:when>
            <xsl:when test="$filename='author-and-references.svg'">UUID-b0383af3-003a-dde6-8f44-cd94cd0cf9ec</xsl:when>
            <xsl:when test="$filename='brightspot-header.svg'">UUID-bf0234da-188f-17c2-e3c0-7280d0fdd8cf</xsl:when>
            <xsl:when test="$filename='call-to-action.svg'">UUID-db9664ca-fd87-d552-6f2b-afc17e052ea8</xsl:when>
            <xsl:when test="$filename='companion-content.svg'">UUID-316a5f3e-2660-e4f8-232c-3a59fd374820</xsl:when>
            <xsl:when test="$filename='configuration-key.svg'">UUID-56e0a678-0c6e-0048-d75e-eaabe66f76f6</xsl:when>
            <xsl:when test="$filename='content-edit-form.png'">UUID-b707df52-3c93-3a21-00ad-f7b468abadfc</xsl:when>
            <xsl:when test="$filename='content-edit-page.svg'">UUID-2e8ff19b-13fd-a4a3-5da1-453aa38942a7</xsl:when>
            <xsl:when test="$filename='cropped-image.jpg'">UUID-bf9f8857-e761-9d8d-c7de-ae65c6782af5</xsl:when>
            <xsl:when test="$filename='dashboard.svg'">UUID-711e8b29-27d6-6359-33d2-2fa7aa67fda4</xsl:when>
            <xsl:when test="$filename='focus-point-glossary.svg'">UUID-cc9abec8-2ca2-e7c5-c0c3-668c7903f76b</xsl:when>
            <xsl:when test="$filename='inline-editor.svg'">UUID-09670dc3-9bf1-6905-9ca2-3b629854bcc9</xsl:when>
            <xsl:when test="$filename='internal-name.svg'">UUID-ef06ec0f-6313-c3da-3804-6344e8362f8b</xsl:when>
            <xsl:when test="$filename='lead-image.svg'">UUID-f9bbf3fa-5e22-65e4-649a-5cf6ffd7e0d0</xsl:when>
            <xsl:when test="$filename='navigation-menu.svg'">UUID-1cdd4d77-d1f9-6fc3-03c2-bf6003db586c</xsl:when>
            <xsl:when test="$filename='publish-widget.png'">UUID-68afbbe8-a7e8-ef49-2994-239fed4a364c</xsl:when>
            <xsl:when test="$filename='revision-widget.png'">UUID-0332f0a1-338a-36b1-03dc-40c19826efde</xsl:when>
            <xsl:when test="$filename='search-panel.png'">UUID-499a75cc-dd5c-af9c-913b-8ade46d642a1</xsl:when>
            <xsl:when test="$filename='selection-field.png'">UUID-cf91a51f-6735-49ca-69c8-6632faadebb8</xsl:when>
            <xsl:when test="$filename='slug.svg'">UUID-f99a9070-5e17-4ea7-f6b9-32733eeffcfc</xsl:when>
            <xsl:when test="$filename='uncropped-image.jpg'">UUID-3c4aa819-82b9-7dfe-5d93-90730a1c5f17</xsl:when>
            <xsl:when test="$filename='urls-widget.png'">UUID-fc2bca0b-d91c-9f3f-ad2c-acea73c2d520</xsl:when>
            <xsl:when test="$filename='widget.png'">UUID-7e1a3246-7f17-2f88-b89d-d9e00827bc99</xsl:when>

            <!-- 3.3 Debugging -->

            <xsl:when test="$filename='code-return-query.png'">UUID-13ee435f-a0b6-121b-c185-1067b647e285</xsl:when>
            <xsl:when test="$filename='code-tool-return.png'">UUID-316cdb06-f95b-a1e4-47f8-3d8ef2c0d732</xsl:when>
            <xsl:when test="$filename='code-update.png'">UUID-12de5b9b-15f9-3e10-e1c6-d2b2d48645a3</xsl:when>
            <xsl:when test="$filename='commit-information.png'">UUID-4ef1585f-f196-5e68-0aef-5010fabd60e7</xsl:when>
            <xsl:when test="$filename='db-bootstrap.png'">UUID-f329c64d-c843-fa1d-ef36-cdea81afd4be</xsl:when>
            <xsl:when test="$filename='db-bulk-tool.png'">UUID-a34240e0-28cb-064b-0e46-5156468be374</xsl:when>
            <xsl:when test="$filename='db-schema-tool.png'">UUID-974d4202-5b07-bc9d-0bf2-b7a8ebceaff9</xsl:when>
            <xsl:when test="$filename='db-solr.png'">UUID-69f75301-b8e0-9feb-5cab-2aa9a99044ac</xsl:when>
            <xsl:when test="$filename='db-sql.png'">UUID-90ec2239-259d-7a64-e12d-c49461f4a9b6</xsl:when>
            <xsl:when test="$filename='db-storage.png'">UUID-2b55c7d4-8c50-061e-f36d-6ac8426f00ad</xsl:when>
            <xsl:when test="$filename='edit-code-tool.png'">UUID-d66ed38e-ac76-22da-b280-c0911d36e951</xsl:when>
            <xsl:when test="$filename='hotspots-debugger.png'">UUID-c83e2106-3868-7efc-0482-b4f40a0c83c9</xsl:when>
            <xsl:when test="$filename='new-code.png'">UUID-1aa2c42c-47b2-5b0a-1651-be69b919ea42</xsl:when>
            <xsl:when test="$filename='profile-overview.png'">UUID-92b77d83-d35c-67a5-e040-dd51de031ccd</xsl:when>
            <xsl:when test="$filename='query-tool-basic.png'">UUID-1aa19826-0659-000f-51f6-2daa353c4a14</xsl:when>
            <xsl:when test="$filename='query-tool-fielded.png'">UUID-f3eecca8-1b3f-e2a8-5ea4-125d2481a69d</xsl:when>
            <xsl:when test="$filename='settings.png'">UUID-33f5d1a7-7b3f-f6be-c625-426535222c2b</xsl:when>
            <xsl:when test="$filename='stats-tool.png'">UUID-e8ed8fce-76b1-1a5b-c69e-0fc367915350</xsl:when>
            <xsl:when test="$filename='task-tool.png'">UUID-b9147357-1d4d-d677-d952-499037087b18</xsl:when>
            <xsl:when test="$filename='tool-list.png'">UUID-df480a52-48d6-ac38-59b7-51ebbaa3e9ed</xsl:when>
            <xsl:when test="$filename='waterfall-profile.png'">UUID-9197e4ba-0050-da6b-1bfd-adfe30e842e9</xsl:when>
            <xsl:otherwise>
                <xsl:message>WARNING: No UUID found for image file <xsl:value-of select="$filename"/>
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:transform>