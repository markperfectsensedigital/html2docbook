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

            <!-- 3.3 Tutorial images -->
            <xsl:when test="$filename='dashboard.png'">UUID-a83998c5-8db0-e4ae-9ab7-9848af86dc88</xsl:when>
            <xsl:when test="$filename='image-field.png'">UUID-ee679ecb-fa1b-644d-ac72-b4ba502a0bdb</xsl:when>
            <xsl:when test="$filename='login.png'">UUID-55a7d081-e51c-754b-9794-fcd0ce6d1c96</xsl:when>
            <xsl:when test="$filename='new-article.svg'">UUID-af2e3c54-0828-0d33-b112-9e473d9a66c8</xsl:when>
            <xsl:when test="$filename='new-fields.png'">UUID-7169d4fe-f4cc-f4e1-f200-46442c38416e</xsl:when>
            <xsl:when test="$filename='new-image-in-content-picker.png'">UUID-f19faa54-b062-241c-28ba-8a9c89219ff8</xsl:when>
            <xsl:when test="$filename='new-image.png'">UUID-1af15e74-75a6-bd4c-4906-575dea6cd62e</xsl:when>
            <xsl:when test="$filename='permalink.png'">UUID-8b4cafc4-1391-b783-929a-0d038de1a845</xsl:when>
            <xsl:when test="$filename='populated-article.png'">UUID-5bbd27b8-2d00-5d9e-9847-659ec7ea2a9a</xsl:when>
            <xsl:when test="$filename='preview-control-in-publish-widget.svg'">UUID-9ca0ad7f-6371-909d-be25-57c851948bcb</xsl:when>
            <xsl:when test="$filename='preview-pane.png'">UUID-2d881b69-4f7d-0c26-831e-f0cc0083ac6a</xsl:when>
            <xsl:when test="$filename='progression-diagram.svg'">UUID-5d0f13ed-194d-de92-9fad-1d9630869f29</xsl:when>
            <xsl:when test="$filename='published.png'">UUID-6b21f5ce-75da-71fa-76d4-7a68e6f19017</xsl:when>
            <xsl:when test="$filename='reloader.png'">UUID-85ecc7e2-eb18-3e1f-7d90-c4a82a0f0ece</xsl:when>
            <xsl:when test="$filename='rte-editor.png'">UUID-e53e4b5d-64f8-6d00-ece2-ed3faef397cd</xsl:when>
            <xsl:when test="$filename='styleguide-article-formatted.png'">UUID-c8a35770-a5de-f297-e67e-754a399a5aa3</xsl:when>
            <xsl:when test="$filename='styleguide-article-published.png'">UUID-70718f55-ba2a-e392-d3d9-af8e90c29ee5</xsl:when>
            <xsl:when test="$filename='styleguide-article.png'">UUID-0089c0f3-a1b1-86d3-24e7-d310a20b83ed</xsl:when>
            <xsl:when test="$filename='styleguide-blank.png'">UUID-9354688c-5f08-6401-804a-e8059cfda5cd</xsl:when>
            <xsl:when test="$filename='styleguide-default.png'">UUID-146d0674-52f2-9cfe-7247-02acb9ccdebe</xsl:when>
            <xsl:when test="$filename='styleguide-directory.svg'">UUID-58db609b-0c10-d462-917e-ba2463c1d16f</xsl:when>
            <xsl:when test="$filename='tutorial-directory.svg'">UUID-d1267538-477e-5da2-7cbe-650b23468440</xsl:when>

            <!-- 3.3 Content Modeling Images -->
            <xsl:when test="$filename='annotations-dev-tab.png'">UUID-6cb466f5-13c3-cd08-40a9-23ba8e335e84</xsl:when>
            <xsl:when test="$filename='annotations-on-fields.svg'">UUID-eea6c5b3-2227-d7f8-b376-1a209d463ac9</xsl:when>
            <xsl:when test="$filename='boolean-widget.png'">UUID-9b1cfc4b-3a3c-5ef4-9f33-5fbae1d243df</xsl:when>
            <xsl:when test="$filename='bulk-upload-step1.png'">UUID-16d2abf9-5d10-d487-af2d-d5b827e54ca4</xsl:when>
            <xsl:when test="$filename='bulk-upload-step2.png'">UUID-e7a59ded-6d48-5325-7bf2-9098430aacea</xsl:when>
            <xsl:when test="$filename='cluster-display-order.svg'">UUID-2455c60d-33fe-0050-2bf0-0c31a61df4ac</xsl:when>
            <xsl:when test="$filename='cluster.png'">UUID-a96ccc2e-99ea-7816-7143-75f01fa0b326</xsl:when>
            <xsl:when test="$filename='code-type.png'">UUID-2ccfc3e8-2aea-7349-8f39-06040cc6acd6</xsl:when>
            <xsl:when test="$filename='color-picker.png'">UUID-9f3ad912-38b1-cc9a-d3d2-d6e5baa920e7</xsl:when>
            <xsl:when test="$filename='content-picker-from-global-filter.svg'">UUID-4e4320e7-7c21-bb0d-42ce-b7d113e2b7e6</xsl:when>
            <xsl:when test="$filename='content-picker-query.png'">UUID-d56e9c83-02c9-d82d-3e51-911d0be7b6b7</xsl:when>
            <xsl:when test="$filename='content-types-selection-fields.png'">UUID-86e0a91e-0e73-9c0e-f073-243295c67072</xsl:when>
            <xsl:when test="$filename='css-class.png'">UUID-ae3ead0d-3a07-e94c-0d1d-a7628e407cc1</xsl:when>
            <xsl:when test="$filename='date-widget.png'">UUID-ffff2959-c6d8-dcd6-c776-81f4150362d7</xsl:when>
            <xsl:when test="$filename='default-search-result.svg'">UUID-d2787cb5-3968-8e54-0161-73bcf6dc84f5</xsl:when>
            <xsl:when test="$filename='default-sort-field.svg'">UUID-4e859118-8585-1acd-116e-c29a5b01d5c4</xsl:when>
            <xsl:when test="$filename='display-after.png'">UUID-60646332-75f8-0690-e038-6a4bda94955e</xsl:when>
            <xsl:when test="$filename='display-before.png'">UUID-349e2af1-7f4b-34be-a566-b659309e4c41</xsl:when>
            <xsl:when test="$filename='display-first.png'">UUID-ddfe7ca2-f06b-df29-ceee-8b14de436f2f</xsl:when>
            <xsl:when test="$filename='display-global-filter.svg'">UUID-346f5a71-da1b-cf4a-1e6c-a4b0721aff9c</xsl:when>
            <xsl:when test="$filename='display-grid.png'">UUID-8c7fb6f1-42b2-6aff-7e7f-4dc34c1c2166</xsl:when>
            <xsl:when test="$filename='display-last.png'">UUID-c520abd4-c90d-c362-0e72-3b1b23571ca7</xsl:when>
            <xsl:when test="$filename='drop-down.png'">UUID-0aada34e-0399-3c68-c3fc-441050918f2d</xsl:when>
            <xsl:when test="$filename='edit-standard-image-size.png'">UUID-3d2504c3-0129-1772-def1-03f8e577b0a3</xsl:when>
            <xsl:when test="$filename='enum-widget.png'">UUID-cf3a073e-c9aa-e182-0e89-f7db1e001e16</xsl:when>
            <xsl:when test="$filename='expanded.png'">UUID-1a8592ac-e0fa-c146-7baa-a737ed1715b1</xsl:when>
            <xsl:when test="$filename='field-display-order.png'">UUID-e5ce22bd-bc1c-5062-5846-de52e4b4aab0</xsl:when>
            <xsl:when test="$filename='field-display-type.png'">UUID-0ef83181-e836-e674-58d5-c3784b9d9e6a</xsl:when>
            <xsl:when test="$filename='field-label.png'">UUID-03bd064c-b0fe-bfb3-76a8-6b8dc2991c9d</xsl:when>
            <xsl:when test="$filename='field-level-embed.png'">UUID-c7da80ff-d514-669a-8cea-9788847d8740</xsl:when>
            <xsl:when test="$filename='field-sorted.png'">UUID-b5f97ffc-a3c1-573a-bff7-a0df18e69ef1</xsl:when>
            <xsl:when test="$filename='file-properties-display-name.svg'">UUID-f82d17ff-48ff-dfb1-c44a-aad286991606</xsl:when>
            <xsl:when test="$filename='filterable.svg'">UUID-2abf7f6e-9b0e-d98a-d848-2e52f231c127</xsl:when>
            <xsl:when test="$filename='global-filter.svg'">UUID-49c0725c-107f-0c27-370e-7b6128e2331b</xsl:when>
            <xsl:when test="$filename='item-color.png'">UUID-5c91c3ec-8de8-60d4-8dbe-ccc6bfbdabf4</xsl:when>
            <xsl:when test="$filename='item-markers.png'">UUID-904d353d-6fcc-a493-ef92-42109ec1d69c</xsl:when>
            <xsl:when test="$filename='item-toggle.png'">UUID-9d7f89bb-a92b-dc8e-1abf-24371522f453</xsl:when>
            <xsl:when test="$filename='item-weight.png'">UUID-ab15a3a1-949f-5e87-ba2d-1c1c1ad5caf2</xsl:when>
            <xsl:when test="$filename='layout-fields.svg'">UUID-a679d89d-76b1-753b-27f0-e6efa511bf5f</xsl:when>
            <xsl:when test="$filename='layout-placeholders.svg'">UUID-f0190655-ab6e-1d79-8e24-59abaa7cc21c</xsl:when>
            <xsl:when test="$filename='list-widget.png'">UUID-683d168c-b017-0070-d916-15699eb04eab</xsl:when>
            <xsl:when test="$filename='main.png'">UUID-3b9ea6f5-2061-a06f-2d6f-f10b5f5dc88d</xsl:when>
            <xsl:when test="$filename='markdown-widget.png'">UUID-997da60b-d5f1-b279-1bbe-145a3c95dde5</xsl:when>
            <xsl:when test="$filename='modified-article.png'">UUID-013afcd1-b3b5-7ab8-d1cc-5e121a2937a2</xsl:when>
            <xsl:when test="$filename='new-author.png'">UUID-a02b521d-26a5-3799-96bf-c2c44f6158d7</xsl:when>
            <xsl:when test="$filename='new-query-ui.png'">UUID-0e7dc318-5b13-aba4-0e95-bf466369448a</xsl:when>
            <xsl:when test="$filename='news-article.png'">UUID-8aa21775-d36e-c124-c37c-aa25ef97e241</xsl:when>
            <xsl:when test="$filename='note-html.png'">UUID-77b6539a-8a72-5954-5609-c497447770b5</xsl:when>
            <xsl:when test="$filename='note-renderer.png'">UUID-2653fa74-26b8-be01-4dd3-ea5776c2af40</xsl:when>
            <xsl:when test="$filename='note.png'">UUID-738db08d-f8e1-ee2f-16b2-d999c9bc8fd0</xsl:when>
            <xsl:when test="$filename='onlypathed.svg'">UUID-7200ca03-28c4-0f9d-ef08-1c24ae9d181e</xsl:when>
            <xsl:when test="$filename='placeholder.png'">UUID-d66ecfd9-f9f0-8a7b-d918-0c34a51c9d3c</xsl:when>
            <xsl:when test="$filename='progress.png'">UUID-460453b0-b3c4-25bd-8a7b-54e8a2d76021</xsl:when>
            <xsl:when test="$filename='pub-btn-text.png'">UUID-e299c647-d43f-885a-4836-d5782155f7d6</xsl:when>
            <xsl:when test="$filename='query-article.png'">UUID-f5aefa63-980f-b73a-ccca-8a90fff10e1e</xsl:when>
            <xsl:when test="$filename='read-only-model.png'">UUID-2abaf45d-62a4-e34c-4dbd-ff0ff9e4ef5d</xsl:when>
            <xsl:when test="$filename='read-only.png'">UUID-8fcba858-7cbb-f988-425d-b6140313c9a6</xsl:when>
            <xsl:when test="$filename='rich-text-editor.svg'">UUID-bbca25ee-fded-9959-e0d6-26c707187877</xsl:when>
            <xsl:when test="$filename='rich-text-element-block.svg'">UUID-f301ac1c-738c-3368-a786-1b822729f5c0</xsl:when>
            <xsl:when test="$filename='rich-text-element-menu-items.svg'">UUID-84b5ad3a-9623-07a0-73f6-7f1f9b0eb171</xsl:when>
            <xsl:when test="$filename='rich-text-element-tags.svg'">UUID-d94d71f8-49ac-b106-e807-cf33a24b5c4b</xsl:when>
            <xsl:when test="$filename='rich-text-element-tool-tip.png'">UUID-ff176fba-4162-5e61-5bc1-c04ed27aa138</xsl:when>
            <xsl:when test="$filename='rich-text-initial-body.png'">UUID-78c3c1c6-1931-9986-0063-33132ad7e15d</xsl:when>
            <xsl:when test="$filename='rich-text.png'">UUID-64dba258-3b8f-b46f-320c-cbdea89465a4</xsl:when>
            <xsl:when test="$filename='rte-annotation.png'">UUID-f3fa8235-204c-f57c-06eb-cb0a7463fd12</xsl:when>
            <xsl:when test="$filename='save-widget.png'">UUID-a4c005ac-9fd5-44d6-4298-516e4a595660</xsl:when>
            <xsl:when test="$filename='secret.png'">UUID-c96dcfe7-5827-a2dc-53e4-2f458f4cd84b</xsl:when>
            <xsl:when test="$filename='seo-description.svg'">UUID-c671260a-61cd-8363-1c3d-4fde0c215a83</xsl:when>
            <xsl:when test="$filename='seo-title.svg'">UUID-8659491b-6122-6ace-9b31-502ec8b8f94c</xsl:when>
            <xsl:when test="$filename='sortable.svg'">UUID-0c8170d1-d605-64e3-16c2-2f045c0f36fd</xsl:when>
            <xsl:when test="$filename='storage-widget.png'">UUID-723946bc-976c-4b00-ee39-c1a33744c269</xsl:when>
            <xsl:when test="$filename='subheadline-.png'">UUID-4fc8a01f-e705-0a9b-8811-58bbb1445d8b</xsl:when>
            <xsl:when test="$filename='subheadline-visible.png'">UUID-797bffa2-df81-9a5c-607d-a53ad8eca0c6</xsl:when>
            <xsl:when test="$filename='suggested-max.png'">UUID-164ede01-ec89-7d11-ab46-ca008f3b3fcf</xsl:when>
            <xsl:when test="$filename='suggested-min.png'">UUID-332bf00e-f05b-4416-bc50-85ffe6eb64ff</xsl:when>
            <xsl:when test="$filename='suggestions-annotation-2.svg'">UUID-6c15c1c9-f6c5-16b3-6b37-bb2f83e43de4</xsl:when>
            <xsl:when test="$filename='tab-display-order.svg'">UUID-5e98cddb-b430-31b8-0ff8-ab5307c7a0e4</xsl:when>
            <xsl:when test="$filename='tab-label.png'">UUID-a4e1c213-732a-f5e5-1c58-95adeecbb491</xsl:when>
            <xsl:when test="$filename='unlabeled.png'">UUID-793b5fcf-9580-65a3-c3c5-d3ec23f87b7f</xsl:when>
            <xsl:when test="$filename='wrench.svg'">UUID-3eac8db5-e037-e24a-187c-71371e22a202</xsl:when>

            <!-- 3.3 Developer Widgets -->

            <xsl:when test="$filename='custom-dashboard-widget-displayed.png'">UUID-fb2cf833-1648-a1df-a38b-f210b0df1554</xsl:when>
            <xsl:when test="$filename='custom-dashboard-widget.svg'">UUID-6c3c53e2-d6ca-2cbd-4823-a9446ae20beb</xsl:when>
            <xsl:when test="$filename='custom-profile-tab.png'">UUID-b6f713e2-32bf-ae20-e888-a803e46d2c61</xsl:when>
            <xsl:when test="$filename='custom-tab.png'">UUID-358b0610-ebf4-55ab-53cc-ecf09cdc0ce2</xsl:when>
            <xsl:when test="$filename='custom-widget-content-edit-form.png'">UUID-479f52c2-5872-4db1-fee6-e3d937894a47</xsl:when>
            <xsl:when test="$filename='custom-widget-.png'">UUID-1bd0813a-f768-5a53-8f0d-c37a9967cd02</xsl:when>
            <xsl:when test="$filename='custom-widget-position-substitution.png'">UUID-a3812010-23d3-41fe-4ebc-d1e4e26a02f8</xsl:when>
            <xsl:when test="$filename='custom-widget-position.png'">UUID-49722ecc-2a41-d326-9cf3-ae874ced1589</xsl:when>
            <xsl:when test="$filename='custom-widget-shown.png'">UUID-d146e47d-a8d6-0706-4959-4f137f534554</xsl:when>
            <xsl:when test="$filename='default-profile-tabs.svg'">UUID-252a8450-3f8c-0b4b-15e5-c8eb01399732</xsl:when>
            <xsl:when test="$filename='default-widget-position.svg'">UUID-17953a40-d500-6992-f0bc-c85c116aa9cb</xsl:when>
            <xsl:when test="$filename='no-urls-widget-content-edit-page.png'">UUID-d62cdb2b-9b82-b2ee-0950-3d71d6002bfe</xsl:when>
            <xsl:when test="$filename='updating-content-edit-widget.png'">UUID-0c0412e8-ac16-f73f-20a5-7088e75f9150</xsl:when>

            <!-- 3.3 Developer Search -->

            <xsl:when test="$filename='actions1.png'">UUID-7f4f4c1e-8683-f556-e108-6bdf513cc1d0</xsl:when>
            <xsl:when test="$filename='actions2.png'">UUID-b3a38db6-93f5-a7be-73ef-757ae9fab0ce</xsl:when>
            <xsl:when test="$filename='article.png'">UUID-d0cadac3-f7a9-945c-846f-b98e7e1dcbc6</xsl:when>
            <xsl:when test="$filename='carousel.png'">UUID-650e7a35-09a0-c77e-b098-a8711bcb1e34</xsl:when>
            <xsl:when test="$filename='content-picker1.png'">UUID-0793d0db-c258-1803-4648-4d5609bd08ae</xsl:when>
            <xsl:when test="$filename='content-picker2.png'">UUID-e44b5a5f-ec31-6163-48b8-515ba251b691</xsl:when>
            <xsl:when test="$filename='customized-search-panel.svg'">UUID-7d6ccc60-8d5d-cbcd-9f3b-78038fd4a59a</xsl:when>
            <xsl:when test="$filename='results1.png'">UUID-3e8cecb9-5ce0-8a05-fd03-2e1d6a3c6e49</xsl:when>
            <xsl:when test="$filename='results2.png'">UUID-b35a711f-105c-c5f7-9a19-e347e0b705ab</xsl:when>
            <xsl:when test="$filename='select-fields1.png'">UUID-d72776fd-fd1c-2e71-5916-8ab641cf996a</xsl:when>
            <xsl:when test="$filename='select-fields2.png'">UUID-463de128-9457-5a0e-a358-580289949e9c</xsl:when>
            <xsl:when test="$filename='standard-filter.png'">UUID-19ebf4c7-26d8-90c3-14c0-8c1da58c5a42</xsl:when>
            <xsl:when test="$filename='suggestions.png'">UUID-b2eda4b0-2f5f-0b65-7789-814bc946a496</xsl:when>

            <!-- 3.3 Editor dashboard -->
            <xsl:when test="$filename='bulk-upload-widget.png'">UUID-d05d0b85-6d8b-690f-525c-2052e223c603</xsl:when>
            <xsl:when test="$filename='db-cms.png'">UUID-920de8c0-a283-1a89-8ff2-f126b8d1aaab</xsl:when>
            <xsl:when test="$filename='db-global.png'">UUID-8d5e94f3-82f9-e943-f3f8-f97b1f9548ce</xsl:when>
            <xsl:when test="$filename='db-role.png'">UUID-4d073908-8f26-679f-9e7e-6583a614c7d9</xsl:when>
            <xsl:when test="$filename='db-site.png'">UUID-194530e1-a1e6-2012-0fde-6c43537af151</xsl:when>
            <xsl:when test="$filename='db-user.png'">UUID-e750b217-fe95-066c-bfe1-c3c81d11ee71</xsl:when>
            <xsl:when test="$filename='dbpane1.png'">UUID-6c663e24-f6a2-50d0-e679-de56e355ee80</xsl:when>
            <xsl:when test="$filename='dbpane2.png'">UUID-f2787bf5-50a2-afb1-fa7b-b618b9e63cd2</xsl:when>
            <xsl:when test="$filename='dbselect.png'">UUID-bc59828d-ab64-2a9d-2c9d-c16087cf99cf</xsl:when>
            <xsl:when test="$filename='editpage1.png'">UUID-e09d5169-1004-b592-2098-aabc4efcedbc</xsl:when>
            <xsl:when test="$filename='editpage2.png'">UUID-7ef6c8ce-8129-fbbc-a68b-bb2ba18b956c</xsl:when>
            <xsl:when test="$filename='new-schedule.png'">UUID-53044a53-d7f8-7b60-0369-b0aa0d8cb9bb</xsl:when>
            <xsl:when test="$filename='oneoff.png'">UUID-bf7c59f8-62f2-4967-3663-7fe9e5200edd</xsl:when>
            <xsl:when test="$filename='quick-start-content-types.png'">UUID-046101f1-8503-f9c8-153a-32da5f83e9fe</xsl:when>
            <xsl:when test="$filename='quick-start-edit-existing.png'">UUID-0ba943d9-3dff-716b-4a04-9e841bc5fa12</xsl:when>
            <xsl:when test="$filename='quick-start.png'">UUID-26322527-14cb-8a14-d5fb-8beb6c4cdb13</xsl:when>
            <xsl:when test="$filename='recent-activity.jpg'">UUID-34d71e7e-9a9f-cd24-85c6-129da7c084d8</xsl:when>
            <xsl:when test="$filename='resources-widget-resource-file.png'">UUID-a2198b7d-a642-53f0-0a56-5674f0de2b78</xsl:when>
            <xsl:when test="$filename='resources-widget-resource-link.png'">UUID-aeaa6a80-2348-326a-8b86-70e66bcaefbb</xsl:when>
            <xsl:when test="$filename='resources-widget.png'">UUID-e1625321-94df-6d9b-142c-06818ccd9d7c</xsl:when>
            <xsl:when test="$filename='revisions.png'">UUID-573cd2b2-3ac8-155d-698f-2a657c857ec2</xsl:when>
            <xsl:when test="$filename='save.png'">UUID-848414ed-8535-c78a-d249-0057b561026b</xsl:when>
            <xsl:when test="$filename='sched-events.jpg'">UUID-cbcb3439-a606-2b06-53f1-631c73db2e40</xsl:when>
            <xsl:when test="$filename='selections.jpg'">UUID-e9147190-7505-31f9-34f8-8e5843ce0b19</xsl:when>
            <xsl:when test="$filename='tabs.png'">UUID-d4100389-cf96-f061-c094-19cda7f74cfc</xsl:when>
            <xsl:when test="$filename='unpub-drafts.jpg'">UUID-2f69a4f9-7989-2c56-96db-a585d3594fc1</xsl:when>
            <xsl:when test="$filename='upload-files.png'">UUID-e11783a4-77e0-29f5-e602-b5a744233e9b</xsl:when>
            <xsl:when test="$filename='work-streams.png'">UUID-4bc56b7d-f53b-4633-4a25-0461111bcce1</xsl:when>

            <xsl:otherwise>
                <xsl:message>WARNING: No UUID found for image file <xsl:value-of select="$filename"/>
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:transform>