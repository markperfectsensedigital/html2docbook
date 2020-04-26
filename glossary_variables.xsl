<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" 
    xmlns:omg="http://www.lautman.net" 
    xmlns:xinfo="http://ns.expertinfo.se/cms/xmlns/1.0" version="2.0">

    <xsl:function name = "omg:get_baseform">
        <xsl:param name = "href" />
        <xsl:variable name="key">
            <xsl:value-of select="substring-after($href,'#')"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$key='term-action-bar'">Action Bar</xsl:when>
            <xsl:when test="$key='term-ad-module'">Ad Module</xsl:when>
            <xsl:when test="$key='term-affinity'">Affinity</xsl:when>
            <xsl:when test="$key='term-ajax'">AJAX</xsl:when>
            <xsl:when test="$key='term-amp'">AMP</xsl:when>
            <xsl:when test="$key='term-annotation'">Annotation</xsl:when>
            <xsl:when test="$key='term-archive'">Archive</xsl:when>
            <xsl:when test="$key='term-aspect-ratio'">Aspect Ratio</xsl:when>
            <xsl:when test="$key='term-asset'">Asset</xsl:when>
            <xsl:when test="$key='term-atom'">Atom</xsl:when>
            <xsl:when test="$key='term-audience'">Audience</xsl:when>
            <xsl:when test="$key='term-background-task'">Background Task</xsl:when>
            <xsl:when test="$key='term-brightspot'">Brightspot</xsl:when>
            <xsl:when test="$key='term-brightspot-header'">Brightspot Header</xsl:when>
            <xsl:when test="$key='term-bulk-schedule'">Bulk Schedule</xsl:when>
            <xsl:when test="$key='term-call-to-action'">Call to Action</xsl:when>
            <xsl:when test="$key='term-class-finder'">Class Finder</xsl:when>
            <xsl:when test="$key='term-codegen'">Codegen</xsl:when>
            <xsl:when test="$key='term-collection'">Collection</xsl:when>
            <xsl:when test="$key='term-companion-content'">Companion Content</xsl:when>
            <xsl:when test="$key='term-configuration-key'">Configuration Key</xsl:when>
            <xsl:when test="$key='term-content-edit-form'">Content Edit Form</xsl:when>
            <xsl:when test="$key='term-content-edit-page'">Content Edit Page</xsl:when>
            <xsl:when test="$key='term-content-hierarchy'">Content Hierarchy</xsl:when>
            <xsl:when test="$key='term-content-locking'">Content Locking</xsl:when>
            <xsl:when test="$key='term-content-picker'">Content Picker</xsl:when>
            <xsl:when test="$key='term-content-template'">Content Template</xsl:when>
            <xsl:when test="$key='term-content-type'">Content Type</xsl:when>
            <xsl:when test="$key='term-contextual-rendering'">Contextual Rendering</xsl:when>
            <xsl:when test="$key='term-crop-region'">Crop Region</xsl:when>
            <xsl:when test="$key='term-cropping'">Cropping</xsl:when>
            <xsl:when test="$key='term-dari-debug-tools'">Dari Debug Tools</xsl:when>
            <xsl:when test="$key='term-dari-framework'">Dari Framework</xsl:when>
            <xsl:when test="$key='term-dari-profiler'">Dari Profiler</xsl:when>
            <xsl:when test="$key='term-dashboard'">Dashboard</xsl:when>
            <xsl:when test="$key='term-database-bootstrap'">Database Bootstrap</xsl:when>
            <xsl:when test="$key='term-default-template'">Default Template</xsl:when>
            <xsl:when test="$key='term-default-tool-url'">Default Tool URL</xsl:when>
            <xsl:when test="$key='term-dims'">DIMS</xsl:when>
            <xsl:when test="$key='term-draft'">Draft</xsl:when>
            <xsl:when test="$key='term-embargo'">Embargo</xsl:when>
            <xsl:when test="$key='term-embedded-field'">Embedded Field</xsl:when>
            <xsl:when test="$key='term-external-content'">External Content</xsl:when>
            <xsl:when test="$key='term-extra-template'">Extra Template</xsl:when>
            <xsl:when test="$key='term-feed'">Feed</xsl:when>
            <xsl:when test="$key='term-field-level-locking'">Field-Level Locking</xsl:when>
            <xsl:when test="$key='term-focus-point'">Focus Point</xsl:when>
            <xsl:when test="$key='term-gallery-module'">Gallery Module</xsl:when>
            <xsl:when test="$key='term-global-settings'">Global Settings</xsl:when>
            <xsl:when test="$key='term-header'">Header</xsl:when>
            <xsl:when test="$key='term-image-editor'">Image Editor</xsl:when>
            <xsl:when test="$key='term-index'">Index</xsl:when>
            <xsl:when test="$key='term-indexed-method'">Indexed Method</xsl:when>
            <xsl:when test="$key='term-inline-editor'">Inline Editor</xsl:when>
            <xsl:when test="$key='term-internal-name'">Internal Name</xsl:when>
            <xsl:when test="$key='term-item'">Item</xsl:when>
            <xsl:when test="$key='term-lead'">Lead</xsl:when>
            <xsl:when test="$key='term-list-module'">List Module</xsl:when>
            <xsl:when test="$key='term-live'">Live</xsl:when>
            <xsl:when test="$key='term-location'">Location</xsl:when>
            <xsl:when test="$key='term-locking'">Locking</xsl:when>
            <xsl:when test="$key='term-looking-glass'">Looking Glass</xsl:when>
            <xsl:when test="$key='term-metadata'">Metadata</xsl:when>
            <xsl:when test="$key='term-mime-type'">MIME Type</xsl:when>
            <xsl:when test="$key='term-modification'">Modification</xsl:when>
            <xsl:when test="$key='term-module'">Module</xsl:when>
            <xsl:when test="$key='term-multi-site-environment'">Multi-Site Environment</xsl:when>
            <xsl:when test="$key='term-navigation-menu'">Navigation Menu</xsl:when>
            <xsl:when test="$key='term-object'">Object</xsl:when>
            <xsl:when test="$key='term-one-off'">One-Off</xsl:when>
            <xsl:when test="$key='term-opengraph-tag'">OpenGraph Tag</xsl:when>
            <xsl:when test="$key='term-package'">Package</xsl:when>
            <xsl:when test="$key='term-paginated-result'">Paginated Result</xsl:when>
            <xsl:when test="$key='term-permalink'">Permalink</xsl:when>
            <xsl:when test="$key='term-personalization-plugin'">Personalization Plugin</xsl:when>
            <xsl:when test="$key='term-personalized-content-module'">Personalized Content Module</xsl:when>
            <xsl:when test="$key='term-plugin'">Plugin</xsl:when>
            <xsl:when test="$key='term-preview-pane'">Preview Pane</xsl:when>
            <xsl:when test="$key='term-production-guide'">Production Guide</xsl:when>
            <xsl:when test="$key='term-profile-panel'">Profile Panel</xsl:when>
            <xsl:when test="$key='term-promo-module'">Promo Module</xsl:when>
            <xsl:when test="$key='term-publish-widget'">Publish Widget</xsl:when>
            <xsl:when test="$key='term-pull-quote'">Pull Quote</xsl:when>
            <xsl:when test="$key='term-query-tool'">Query Tool</xsl:when>
            <xsl:when test="$key='term-quick-start'">Quick Start</xsl:when>
            <xsl:when test="$key='term-real-time-connection-rtc'">Real Time Connection (RTC)</xsl:when>
            <xsl:when test="$key='term-references-widget'">References Widget</xsl:when>
            <xsl:when test="$key='term-region'">Region</xsl:when>
            <xsl:when test="$key='term-reloader'">Reloader</xsl:when>
            <xsl:when test="$key='term-replication-cache'">Replication Cache</xsl:when>
            <xsl:when test="$key='term-revision'">Revision</xsl:when>
            <xsl:when test="$key='term-revisions-widget'">Revisions Widget</xsl:when>
            <xsl:when test="$key='term-rich-text-module'">Rich Text Module</xsl:when>
            <xsl:when test="$key='term-rich-text-editor'">Rich-Text Editor</xsl:when>
            <xsl:when test="$key='term-rich-text-element'">Rich-Text Element</xsl:when>
            <xsl:when test="$key='term-robot-metatag'">Robot Metatag</xsl:when>
            <xsl:when test="$key='term-role'">Role</xsl:when>
            <xsl:when test="$key='term-rss'">RSS</xsl:when>
            <xsl:when test="$key='term-scheduled'">Scheduled</xsl:when>
            <xsl:when test="$key='term-search-carousel'">Search Carousel</xsl:when>
            <xsl:when test="$key='term-search-module'">Search Module</xsl:when>
            <xsl:when test="$key='term-search-panel'">Search Panel</xsl:when>
            <xsl:when test="$key='term-section'">Section</xsl:when>
            <xsl:when test="$key='term-selection-field'">Selection Field</xsl:when>
            <xsl:when test="$key='term-settings-backed'">Settings Backed</xsl:when>
            <xsl:when test="$key='term-shared'">Shared</xsl:when>
            <xsl:when test="$key='term-site'">Site</xsl:when>
            <xsl:when test="$key='term-site-category'">Site Category</xsl:when>
            <xsl:when test="$key='term-site-search'">Site Search</xsl:when>
            <xsl:when test="$key='term-site-settings'">Site Settings</xsl:when>
            <xsl:when test="$key='term-sitemap'">Sitemap</xsl:when>
            <xsl:when test="$key='term-slug'">Slug</xsl:when>
            <xsl:when test="$key='term-source-filter'">Source Filter</xsl:when>
            <xsl:when test="$key='term-spatial-query'">Spatial Query</xsl:when>
            <xsl:when test="$key='term-state'">State</xsl:when>
            <xsl:when test="$key='term-status'">Status</xsl:when>
            <xsl:when test="$key='term-stock-ticker-module'">Stock Ticker Module</xsl:when>
            <xsl:when test="$key='term-storage-item'">Storage Item</xsl:when>
            <xsl:when test="$key='term-styleguide'">Styleguide</xsl:when>
            <xsl:when test="$key='term-styleguide-template'">Styleguide Template</xsl:when>
            <xsl:when test="$key='term-subscription'">Subscription</xsl:when>
            <xsl:when test="$key='term-tabs-module'">Tabs Module</xsl:when>
            <xsl:when test="$key='term-tag'">Tag</xsl:when>
            <xsl:when test="$key='term-theme'">Theme</xsl:when>
            <xsl:when test="$key='term-tool-url'">Tool URL</xsl:when>
            <xsl:when test="$key='term-transition'">Transition</xsl:when>
            <xsl:when test="$key='term-trigger-date'">Trigger Date</xsl:when>
            <xsl:when test="$key='term-two-factor-authentication'">Two-Factor Authentication</xsl:when>
            <xsl:when test="$key='term-type-id'">Type ID</xsl:when>
            <xsl:when test="$key='term-urls-widget'">URLs Widget</xsl:when>
            <xsl:when test="$key='term-vanity-url'">Vanity URL</xsl:when>
            <xsl:when test="$key='term-view-binding'">View Binding</xsl:when>
            <xsl:when test="$key='term-view-generator'">View Generator</xsl:when>
            <xsl:when test="$key='term-view-model'">View Model</xsl:when>
            <xsl:when test="$key='term-view-system'">View System</xsl:when>
            <xsl:when test="$key='term-viewer'">Viewer</xsl:when>
            <xsl:when test="$key='term-visibility'">Visibility</xsl:when>
            <xsl:when test="$key='term-watch-plugin'">Watch Plugin</xsl:when>
            <xsl:when test="$key='term-widget'">Widget</xsl:when>
            <xsl:when test="$key='term-work-in-progress-wip'">Work in Progress (WIP)</xsl:when>
            <xsl:when test="$key='term-work-stream'">Work Stream</xsl:when>
            <xsl:when test="$key='term-workflow'">Workflow</xsl:when>
            <xsl:when test="$key='term-workflow-log'">Workflow Log</xsl:when>

            <xsl:otherwise>WARNING</xsl:otherwise>
        </xsl:choose>
    </xsl:function>



</xsl:transform>