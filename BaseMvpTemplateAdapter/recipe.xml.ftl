<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/MvpAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Adapter.kt" />
    <instantiate from="res/layout/adapter.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${srcOut}/${className}Adapter.kt"/>

</recipe>