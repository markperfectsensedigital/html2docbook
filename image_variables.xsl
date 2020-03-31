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

            <!-- 3.2 Publishing Tools -->
            <xsl:when test="$filename='accept-change.jpg'">UUID-46e89684-b2ed-7ebd-ea20-52fa8326f99f</xsl:when>
            <xsl:when test="$filename='add-comment.jpg'">UUID-f1135b02-d2bc-0b50-a6ce-809af4092b8f</xsl:when>
            <xsl:when test="$filename='add-table.gif'">UUID-19dab10a-b062-d643-f983-1b279f7b5a71</xsl:when>
            <xsl:when test="$filename='bold.jpg'">UUID-181ca9b2-450f-aea8-a28f-7f6df299356e</xsl:when>
            <xsl:when test="$filename='bullet.jpg'">UUID-bea0116c-4cc5-6c1e-ed5a-f2257400e6d0</xsl:when>
            <xsl:when test="$filename='center.jpg'">UUID-d001ba33-efc6-7694-d185-bdbad85d95e8</xsl:when>
            <xsl:when test="$filename='clear.jpg'">UUID-5a0f8006-d7d1-1229-b4f9-c17396d645f2</xsl:when>
            <xsl:when test="$filename='collapse-comment.jpg'">UUID-cdae40fd-a211-4289-e526-847af3df1f6b</xsl:when>
            <xsl:when test="$filename='edit-table-buttons.jpg'">UUID-fa2f45e1-8c67-c48e-0504-ec10d30c86ff</xsl:when>
            <xsl:when test="$filename='edit-table-options.jpg'">UUID-f9f53c06-7621-acdb-6cb9-2d5429c24f81</xsl:when>
            <xsl:when test="$filename='enhancement-editor.jpg'">UUID-b56a0737-8121-a1fb-4cae-612aaefba294</xsl:when>
            <xsl:when test="$filename='enhancement.jpg'">UUID-91d3b640-145c-30f0-e308-a0d58a8bb50b</xsl:when>
            <xsl:when test="$filename='example.gif'">UUID-1e6ae805-7edc-9b79-9626-0262777f1ef4</xsl:when>
            <xsl:when test="$filename='fullscreen.jpg'">UUID-375c675b-f885-8095-16d9-0d46d5dfd7db</xsl:when>
            <xsl:when test="$filename='geofence.gif'">UUID-635aa8d0-d432-ff00-8996-01b659b36019</xsl:when>
            <xsl:when test="$filename='html.jpg'">UUID-2c9d158a-0fd6-320e-3d8d-2bf05d937538</xsl:when>
            <xsl:when test="$filename='inline.jpg'">UUID-550d08d0-6e1b-9991-f78e-5d0a0f786335</xsl:when>
            <xsl:when test="$filename='italic.jpg'">UUID-4499b4d1-2c6f-d0f1-58dc-22c93b4f9db8</xsl:when>
            <xsl:when test="$filename='left.jpg'">UUID-9e9683c5-a5d3-de4c-28b7-b55d80b10a48</xsl:when>
            <xsl:when test="$filename='link-example.jpg'">UUID-cc85d83a-d649-a98a-dc3f-fdff5cfe8000</xsl:when>
            <xsl:when test="$filename='link.jpg'">UUID-6abde38f-f489-b740-cf05-4553376aa1fa</xsl:when>
            <xsl:when test="$filename='marker.jpg'">UUID-51f3cf42-f4de-054b-52eb-d64d9bf6f15c</xsl:when>
            <xsl:when test="$filename='numbered.jpg'">UUID-818ae654-6ed5-deea-5315-de49506f3bbc</xsl:when>
            <xsl:when test="$filename='preview-mobile.jpg'">UUID-8f8420f5-68e9-5639-d74d-9582a5e32c82</xsl:when>
            <xsl:when test="$filename='preview-rendered.jpg'">UUID-c5956469-f745-a2f8-b5b6-49b12f458b73</xsl:when>

            <!-- 3.2 Publishing Process -->
            <xsl:when test="$filename='archived.jpg'">UUID-129887b1-2168-d20b-668f-64bb7ce2732c</xsl:when>
            <xsl:when test="$filename='backup.png'">UUID-9dbcc61e-3a6b-65bd-2f88-544e91660afd</xsl:when>
            <xsl:when test="$filename='draft.jpg'">UUID-8515dc4d-209f-4416-c020-58811e081c54</xsl:when>
            <xsl:when test="$filename='new.jpg'">UUID-fd60e560-62b1-f9bf-bb4b-406891559962</xsl:when>
            <xsl:when test="$filename='postpubdiagram.png'">UUID-975f33f9-e409-4f3a-aa75-ae6a995bad86</xsl:when>
            <xsl:when test="$filename='postPubDiagram_v1.png'">UUID-ab9d25cb-9563-fc3b-5613-34d5db5033b5</xsl:when>
            <xsl:when test="$filename='postPubDiagram_v2.png'">UUID-dca18038-4cab-fb3d-1771-44e8f131b3f0</xsl:when>
            <xsl:when test="$filename='prepubdiagram.jpg'">UUID-b9606651-726c-98b0-fccd-2ad80c9d7d36</xsl:when>
            <xsl:when test="$filename='prepubdiagram.png'">UUID-6e3953a6-731e-102c-f7da-306835e8c4f5</xsl:when>
            <xsl:when test="$filename='prePubDiagram_v1.png'">UUID-fef67e25-363a-4986-7eaa-593ef6dbf428</xsl:when>
            <xsl:when test="$filename='prePubDiagram_v2.png'">UUID-87251e7d-0a24-9283-6312-034a68c1c70e</xsl:when>
            <xsl:when test="$filename='pubArchived.png'">UUID-73091a2d-2e25-1781-fbf1-61811deb5365</xsl:when>
            <xsl:when test="$filename='pubCommon.png'">UUID-d039a6ce-e868-6122-a2dc-815821d83afd</xsl:when>
            <xsl:when test="$filename='pubIntro_revision.png'">UUID-741713d2-93c0-10ad-86d5-671543dce4f5</xsl:when>
            <xsl:when test="$filename='published.jpg'">UUID-6388e2a9-4216-3538-ba83-efa07db454e5</xsl:when>
            <xsl:when test="$filename='pubMessageBar.png'">UUID-333ee801-8444-730e-20da-6419bf1b8361</xsl:when>
            <xsl:when test="$filename='pubNewSchedule.png'">UUID-6d0026fd-53ff-8813-27ac-115258658342</xsl:when>
            <xsl:when test="$filename='PubPreview.png'">UUID-2023593a-4290-fb88-a95c-719ab87bda3c</xsl:when>
            <xsl:when test="$filename='pubPublishWidget.png'">UUID-bc5fce26-87a3-c312-2df7-32533720b772</xsl:when>
            <xsl:when test="$filename='pubPublishWidget2.png'">UUID-7e689e54-89c3-f069-9108-935dc36fcca5</xsl:when>
            <xsl:when test="$filename='pubpublishWidget3.png'">UUID-c50657a5-2d67-36b8-ef99-c810fa63dcfb</xsl:when>
            <xsl:when test="$filename='pubPublishWidget4.png'">UUID-4b3a413e-b6dc-3245-49f7-1d53d13f73b0</xsl:when>
            <xsl:when test="$filename='pubRevisionsWidget.png'">UUID-e9ec3337-b868-fb8b-90c1-ee8f74d134a8</xsl:when>
            <xsl:when test="$filename='pubRevisionsWidget2.png'">UUID-a7061c5d-8e20-8893-1d65-0af679f0a1fe</xsl:when>
            <xsl:when test="$filename='pubRevisionsWidget3.png'">UUID-12629270-0ce8-93d1-e798-562623eca67d</xsl:when>
            <xsl:when test="$filename='state4a_pubTab.png'">UUID-0bb2f612-2d0b-d6ca-8f2e-9b12a7d451a5</xsl:when>
            <xsl:when test="$filename='state4a_revision.png'">UUID-469ba20a-c939-0b7f-befe-8a44d289e979</xsl:when>
            <xsl:when test="$filename='state4a_wfTab.png'">UUID-b4072be6-9486-785a-f3ca-a353e5fcad5f</xsl:when>
            <xsl:when test="$filename='state4_header.png'">UUID-826b2c76-38d7-79d9-7c82-becc32b1914e</xsl:when>
            <xsl:when test="$filename='state4_pubTab.png'">UUID-59022c0a-c013-3a25-4274-88c5f70efdf9</xsl:when>
            <xsl:when test="$filename='state4_revision.png'">UUID-7b33d520-4b2c-14f6-cae9-de45e98d02cd</xsl:when>
            <xsl:when test="$filename='state5_header.png'">UUID-6e6863c9-fa5d-8eb6-3daa-d71aca3870b9</xsl:when>
            <xsl:when test="$filename='state5_pubTab.png'">UUID-24a1d83f-d6cf-15c4-548f-5b28928bc4f5</xsl:when>
            <xsl:when test="$filename='state5_revision.png'">UUID-b374bc59-5cc6-c92e-1524-7b9e112f4016</xsl:when>
            <xsl:when test="$filename='state6_header.png'">UUID-bc5acbaf-2b2a-7a92-6398-1303e71ba71d</xsl:when>
            <xsl:when test="$filename='state6_pubTab.png'">UUID-4b5497b8-9ff0-1941-0cb4-eeb9b8ec8479</xsl:when>
            <xsl:when test="$filename='state6_revision.png'">UUID-f0049ee9-7880-2b58-a3e4-77fcb69c79a5</xsl:when>
            <xsl:when test="$filename='state6_wfTab.png'">UUID-861b2c46-e299-6e86-9d64-e0e88dd24db7</xsl:when>
            <xsl:when test="$filename='state7_header.png'">UUID-f3a09572-0c4a-4e33-04aa-88cc9d155d84</xsl:when>
            <xsl:when test="$filename='state7_pubTab.png'">UUID-01867ceb-b2b0-c0f0-7791-31241d3541f6</xsl:when>
            <xsl:when test="$filename='state7_revision1.png'">UUID-e01403a5-314c-865b-a3ac-54a928faae86</xsl:when>
            <xsl:when test="$filename='state7_revision2.png'">UUID-5e2685c7-43a4-d969-3f5e-a6945febd634</xsl:when>
            <xsl:when test="$filename='state7_revision3.png'">UUID-c30e281c-3c35-555d-d1da-3a148a16fa4f</xsl:when>
            <xsl:when test="$filename='state7_wfTab.png'">UUID-05b319a1-ec33-1216-4b91-7ebca401637a</xsl:when>
            <xsl:when test="$filename='state8a_header.png'">UUID-62e8bf76-5e72-04c0-e0d4-cecab323d08e</xsl:when>
            <xsl:when test="$filename='state8a_pubTab.png'">UUID-8266b04f-be82-ec24-b313-8a3dd7f07d64</xsl:when>
            <xsl:when test="$filename='state8a_wfTab.png'">UUID-2b4448e8-3be5-ddf4-b826-279b3862b6c5</xsl:when>
            <xsl:when test="$filename='state8_header.png'">UUID-853c902a-d9ea-6908-e021-b2819ba3335f</xsl:when>
            <xsl:when test="$filename='state8_pubTab.png'">UUID-a1bebdc5-0072-8bf1-b73f-3f1b2948b3a4</xsl:when>
            <xsl:when test="$filename='state8_revision.png'">UUID-2592b096-8880-0600-aaee-948984408963</xsl:when>
            <xsl:when test="$filename='state9_header.png'">UUID-74060d39-40c4-e51d-7a07-70fe1ee2bc8b</xsl:when>
            <xsl:when test="$filename='state9_pubTab.png'">UUID-a13f31c9-a4bd-4763-3e1f-e2043083613b</xsl:when>
            <xsl:when test="$filename='state9_revision.png'">UUID-b5b0d573-9e64-7ee1-f628-d18a8d5a75b6</xsl:when>
            <xsl:when test="$filename='workflow.jpg'">UUID-8c61a644-5d82-363a-c035-1e1949643e46</xsl:when>
            <xsl:when test="$filename='pubRevisionsWidget4.png'">UUID-f32f063e-d5c7-65be-6d77-d7c339918cc9</xsl:when>
            <xsl:when test="$filename='pubRevisionsWidget5.png'">UUID-9c4ed581-d32d-a8aa-d122-cb2cac925e9e</xsl:when>
            <xsl:when test="$filename='pubrevisionwidget.png'">UUID-dd755960-659a-6499-0958-ef8f899a376b</xsl:when>
            <xsl:when test="$filename='pubScheduleAction.png'">UUID-b7ca6780-d1a9-6d30-645e-d95079e056f0</xsl:when>
            <xsl:when test="$filename='pubScheduledEvents.png'">UUID-bf33a05c-4a43-ce7e-a445-033d57e668cd</xsl:when>
            <xsl:when test="$filename='pubScheduledScreen.png'">UUID-10dcab37-ce04-2751-01f2-4af78c3fd168</xsl:when>
            <xsl:when test="$filename='pubSchedules.png'">UUID-aa9d85b2-c9e9-b9bb-5d33-148f751f0986</xsl:when>
            <xsl:when test="$filename='pubViewPicker.png'">UUID-9a9ea7cc-9fb9-a4ed-7c4d-3389f30d611b</xsl:when>
            <xsl:when test="$filename='pubwfTab.png'">UUID-ef391548-69a5-4b59-3899-e8e70e8ab9d1</xsl:when>
            <xsl:when test="$filename='ReferencesWidget.png'">UUID-f91062c9-578e-2af6-0b22-bb4e489caa54</xsl:when>
            <xsl:when test="$filename='scheduled.jpg'">UUID-875ba6d5-a374-9e3e-03fe-8767659cfc7c</xsl:when>
            <xsl:when test="$filename='state1_header.png'">UUID-480b2ae6-7f69-e743-5820-fb372350229c</xsl:when>
            <xsl:when test="$filename='state1_pubTab.png'">UUID-f3c5ebce-c21a-09cf-2bc7-339a096d032b</xsl:when>
            <xsl:when test="$filename='state1_wfTab.png'">UUID-412d6632-b524-13b4-1779-0bda5c06ec1b</xsl:when>
            <xsl:when test="$filename='state2_header.png'">UUID-93236455-1875-5108-1caa-e7fe20e2778a</xsl:when>
            <xsl:when test="$filename='state2_pubTab.png'">UUID-18b4700c-ade8-0f30-b3a2-77da1deee043</xsl:when>
            <xsl:when test="$filename='state2_revision.png'">UUID-2d0dd199-458e-f372-18c4-0e1c6aa81a31</xsl:when>
            <xsl:when test="$filename='state2_wfTab.png'">UUID-6fbfbab1-142f-dd57-9e95-637c4f21f259</xsl:when>
            <xsl:when test="$filename='state3_header.png'">UUID-8d481444-d499-4ec4-fb18-baedb67dd3df</xsl:when>
            <xsl:when test="$filename='state3_pubTab.png'">UUID-21a7d6d2-fb39-846b-6c77-414eaa073577</xsl:when>
            <xsl:when test="$filename='state3_revision1.png'">UUID-9fb0fd30-aad1-5461-e310-2d393a81efa7</xsl:when>
            <xsl:when test="$filename='state3_revision2.png'">UUID-991a1695-0f0c-c503-7aad-ba597114f16c</xsl:when>
            <xsl:when test="$filename='state3_revision3.png'">UUID-561ce986-fc12-0106-7ddc-aabd450397c3</xsl:when>
            <xsl:when test="$filename='state3_wfTab.png'">UUID-65609592-d989-49c5-303b-064e56a8fbf1</xsl:when>
            <xsl:when test="$filename='state4a_header.png'">UUID-446abafa-0bf6-e184-733c-7e60d6b992da</xsl:when>



            <xsl:otherwise>
                <xsl:message>WARNING: No UUID found for image file <xsl:value-of select="$filename"/>
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:transform>