<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0">

    <xsl:template name = "get_uuid">
        <xsl:param name = "filename" />
        <xsl:choose>
            <!-- 3.2, introduction -->
            <xsl:when test="$filename='dashboard.png'">UUID-32dd8294-361f-aaa6-c356-1a91711985ee</xsl:when>
            <xsl:when test="$filename='debuglogin.png'">UUID-e0226c8c-be7d-86d9-17a0-7d425e9d5ab8</xsl:when>
            <xsl:when test="$filename='dockermenu-osx.png'">UUID-6586dd43-f651-1e32-6a16-9f2ed5ab924c</xsl:when>
            <xsl:when test="$filename='dockermenu-win.png'">UUID-096da6af-29d5-4bdf-cd65-c6f289fb299a</xsl:when>
            <xsl:when test="$filename='kitematic.png'">UUID-f3851b8b-10d2-61eb-1eba-c7f3092eb3ff</xsl:when>
            <xsl:when test="$filename='loginscreen.png'">UUID-89668199-c2a8-5a77-efb6-7dbf719e2687</xsl:when>
            <xsl:when test="$filename='startinstance.jpeg'">UUID-179026b6-a582-b598-6b5c-616dc88b2876</xsl:when>
            <xsl:when test="$filename='toolkitinstaller.png'">UUID-e5ff8e73-6fd1-0ff9-1047-9372ffbeed53</xsl:when>

            <!-- 3.2, dashboards -->
            <xsl:when test="$filename='bulk-upload-widget.jpg'">UUID-afa85d0f-07fb-76e3-0287-022f9d66620b</xsl:when>
            <xsl:when test="$filename='bulk-upload.gif'">UUID-d8b65940-f008-dff4-7b7b-c8fc49c11271</xsl:when>
            <xsl:when test="$filename='common-content.jpg'">UUID-a05aa039-a453-043a-a4e1-5241b172303f</xsl:when>
            <xsl:when test="$filename='db-cms.png'">UUID-b848e128-93b5-2ef8-1ed9-94caf3f637b1</xsl:when>
            <xsl:when test="$filename='dbpane1.png'">UUID-03f8f4e4-bc3f-c926-34db-0c1805ae7e7e</xsl:when>
            <xsl:when test="$filename='dbpane2.png'">UUID-557bb507-f220-886e-b12a-0bfd3f8ab060</xsl:when>
            <xsl:when test="$filename='dbpane3.png'">UUID-b99bffb7-fc3b-ea8d-fdbe-5b14a78c1cd2</xsl:when>
            <xsl:when test="$filename='dbselect.png'">UUID-46a3ed97-81b6-dc94-7ba1-caba15a43ff4</xsl:when>
            <xsl:when test="$filename='dropdown.png'">UUID-617dc1b2-d49e-f764-f956-9a57fce1d245</xsl:when>
            <xsl:when test="$filename='editpage1.png'">UUID-ab07a24d-2b12-2749-9a3d-b3a9a3eef729</xsl:when>
            <xsl:when test="$filename='editpage2.png'">UUID-1a39a902-3b10-ce37-b56d-1339e216cdb1</xsl:when>
            <xsl:when test="$filename='new-content.jpg'">UUID-83cd2fbb-897a-e533-7529-13a8191b2195</xsl:when>
            <xsl:when test="$filename='new-schedule.jpg'">UUID-c7bd06b4-1409-d36e-f439-50cb657cf75e</xsl:when>
            <xsl:when test="$filename='recent-activity.jpg'">UUID-a3cdc042-dc75-3b5a-b3da-6101a57f67ad</xsl:when>
            <xsl:when test="$filename='resources.jpg'">UUID-fd4c209f-70cf-1ff6-15e3-8c1add789d54</xsl:when>
            <xsl:when test="$filename='revisions.png'">UUID-2f9df4ae-ff36-3c01-e61f-ea5c9a1db6d1</xsl:when>
            <xsl:when test="$filename='save.png'">UUID-3439abda-908f-971e-3974-042610cf6c5a</xsl:when>
            <xsl:when test="$filename='sched-events.jpg'">UUID-af5d3117-4c53-dff1-5ec7-7bdc47cfe93c</xsl:when>
            <xsl:when test="$filename='selections.jpg'">UUID-6db26242-bb8c-a75b-e2fd-a79c815c4850</xsl:when>
            <xsl:when test="$filename='sitemap.jpg'">UUID-82c2dea3-6868-0e41-6988-84d2f5b0f862</xsl:when>
            <xsl:when test="$filename='unpub-drafts.jpg'">UUID-9d579bb6-8df0-2b8c-cc07-4a0ea8f1c727</xsl:when>
            <xsl:when test="$filename='work-streams.jpg'">UUID-94f86fd4-83eb-d6dc-c3d0-8ac1eeeba6e9</xsl:when>


            <xsl:otherwise>
                <xsl:message>WARNING: No UUID found for image file <xsl:value-of select="$filename"/>
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:transform>