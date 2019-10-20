<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/MvpView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}View.kt" />
    <instantiate from="src/app_package/MvpViewActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
    <instantiate from="src/app_package/MvpModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Module.kt" />
    <instantiate from="res/layout/activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />


    <open file="${srcOut}/${className}Activity.kt"/>
</recipe>