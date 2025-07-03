<?xml version="1.0" encoding="utf-8"?>
<!--
// COPYRIGHT B&R
// Stylesheet to create SCSS for Styles in Themes (widgets and types)
// Input: all .style files of a theme
// requires the .type file for types and the .widget file for widgets and PropertyCollections (=StructuredProperty)
// runs in Content Editor (CE) and AS Build (ASB)
// in CE all widgets are in the same folder (copied by CE)
// in ASB the widgets are in 3 different places: core widgets(brease and prototype) in TP, customized widgets in Temp, custom widgets in Logical View
-->

<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:wdgst="http://www.br-automation.com/iat2015/styles/engineering/v1"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:widget="http://www.br-automation.com/iat2014/widget"
      xmlns:widgetList="http://www.br-automation.com/iat2015/widgetListDefinition/v2"
      xmlns="http://www.br-automation.com/iat2015/styles/engineering/v1">

  <xsl:output method="text" encoding="UTF-8" indent="yes" />
  <!-- param 'elpathdelimiter' for the use in e.g. Linux -->
  <xsl:param name="elpathdelimiter">/</xsl:param>
  <xsl:param name="basepath" select="'../../BRVisu/'"></xsl:param><!-- path to .widget files (for CE only) -->
  <xsl:param name="asBasepath" select="'../../types/'"></xsl:param><!-- path to .type files (relative for CE, absolute for ASB) -->
  <xsl:param name="widgetBasepath" select="'../../../../'"></xsl:param><!-- @import path for widgets base scss (for CE only) -->
  <xsl:param name="systemBasepath" select="'../../../../../types/'"></xsl:param><!-- @import path for types base scss (for CE only) -->
  <xsl:param name="useWidgetIndex">true</xsl:param><!-- true for ASB, false for CE (in CE all widgets are used)-->
  <xsl:param name="widgetIndexPath" select="'../../../../BR.IAT.widgetsfile'"></xsl:param><!-- list of used widgets with their path-->

  <!-- include in same directory, as href does not allow the use of a param-->
  <xsl:include href="HelperFunctions.xsl"/>

  <!-- entry point -->
  <xsl:template match="/">
    <xsl:if test="wdgst:Styles">
      <xsl:text>@import "mixins.scss";&#xa;</xsl:text>
      <xsl:for-each select="wdgst:Styles/wdgst:Style">
        <!-- style with id='default' has to be first, as other styles have to be able to override it -->
        <xsl:if test="@id='default'">
          <xsl:call-template name="createStyle" />
        </xsl:if>
      </xsl:for-each>
      <xsl:for-each select="wdgst:Styles/wdgst:Style">
        <xsl:if test="not(@id='default')">
          <xsl:call-template name="createStyle" />
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <xsl:template name="createStyle">
    <xsl:variable name="xsiType" select="@xsi:type" />

    <!-- first part of css class name, e.g 'widgets_brease_Button' for 'widgets.brease.Button' -->
    <xsl:variable name="styleNamePrefix">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$xsiType" />
        <xsl:with-param name="replace" select="'.'"/>
        <xsl:with-param name="by" select="'_'" />
      </xsl:call-template>
    </xsl:variable>

    <!-- itemName is last part of fully qualified name -->
    <!-- e.g. 'Button' for 'widgets.brease.Button' or 'Axis' for 'widgets.development.StructPropWidget.Axis' -->
    <xsl:variable name="itemName">
      <xsl:call-template name="get-item-name">
        <xsl:with-param name="xsiType" select="$xsiType"></xsl:with-param>
      </xsl:call-template>
    </xsl:variable>

    <!-- number of parts of fully qualified name -->
    <xsl:variable name="namespaceDepth">
      <xsl:choose>
        <xsl:when test="$useWidgetIndex='false'">
          <xsl:call-template name="count-elements">
            <xsl:with-param name="count" select="0" />
            <xsl:with-param name="text" select="$xsiType" />
            <xsl:with-param name="separator" select="'.'" />
          </xsl:call-template>
        </xsl:when>
      <xsl:otherwise>
          <xsl:value-of select="-1"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="isStructuredProperty">
      <xsl:choose>
        <xsl:when test="$useWidgetIndex='false'">
          <xsl:choose>
            <!-- workaround to identify StructuredProperty -->
            <xsl:when test="$namespaceDepth=4">
              <xsl:value-of select="'true'"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="'false'"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="document($widgetIndexPath)//widgetList:StructuredProperty[@name=$xsiType]">
              <xsl:value-of select="'true'"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="'false'" />
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- xsiType of the widget a StructuredProperty belongs to; otherwise of the widget itself -->
    <xsl:variable name="relatedWidget">
      <xsl:choose>
        <xsl:when test="$isStructuredProperty='true'">
          <xsl:value-of select="substring-before($xsiType, concat('.',$itemName))" />
        </xsl:when>
        <xsl:otherwise>
        <xsl:value-of select="$xsiType" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <!-- detect if widget is used -->
    <!-- in CE all widgets are used -->
    <!-- in ASB we look into the index file -->
    <xsl:variable name="isWidgetInUse">
     <xsl:choose>
        <xsl:when test="$useWidgetIndex='false'">
          <xsl:value-of select="'true'"/>
        </xsl:when>
        <xsl:when test="document($widgetIndexPath)//widgetList:widgets/widgetList:widget[@name=$relatedWidget]/@name">
          <xsl:value-of select="'true'"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="'false'" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- distinction between widget, structuredProperty and system (=global styles, e.g. system.brease.Tooltip) -->
    <xsl:variable name="itemType">
      <xsl:choose>
        <xsl:when test="starts-with(@xsi:type,'system.brease.')">
          <xsl:value-of select="'system'"/>
        </xsl:when>
        <xsl:when test="$isStructuredProperty='true'">
          <xsl:value-of select="'structuredProperty'"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="'widget'"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- read itemPath from index file in ASB -->
    <xsl:variable name="itemPathFromIndexFile">
     <xsl:choose>
        <xsl:when test="$useWidgetIndex='false'">
          <xsl:value-of select="'noIndexFile'"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="document($widgetIndexPath)//widgetList:widgets/widgetList:widget[@name=$relatedWidget]/@path" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- correction from \ to / (TODO: remove and deliver path in correct form) -->
    <!-- <xsl:variable name="itemPathFromIndexFile">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$itemPathFromIndexFileRaw" />
        <xsl:with-param name="replace" select="'\'" />
        <xsl:with-param name="by" select="$elpathdelimiter" />
      </xsl:call-template>
    </xsl:variable> -->

    <!-- create entry for Style for used widgets and all system styles-->
    <xsl:if test="$isWidgetInUse='true' or $itemType='system'">

      <!-- class path of item -->
      <!-- e.g. "widgets/brease/Button" for widgets.brease.Button -->
      <!-- e.g. "widgets/brease/OnlineChartHDA" for widgets.brease.OnlineChartHDA.Graph -->
      <!-- not used for system styles-->
      <xsl:variable name="itemClassPath">
        <xsl:choose>
          <xsl:when test="$itemType='structuredProperty'">
            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$relatedWidget" />
              <xsl:with-param name="replace" select="'.'" />
              <xsl:with-param name="by" select="$elpathdelimiter" />
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$xsiType" />
              <xsl:with-param name="replace" select="'.'" />
              <xsl:with-param name="by" select="$elpathdelimiter" />
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>

      <!-- full path to folder of item -->
      <!-- e.g. in CE "../../BRVisu/widgets/brease/Button" -->
      <!-- e.g. in ASB "C:/Program%20Files/BrAutomation/AS6/AS/TechnologyPackages/mappView/6.0/Widgets/brease/Button" -->
      <xsl:variable name="itemFullPath">
        <xsl:choose>
            <xsl:when test="$useWidgetIndex='false'">
              <xsl:value-of select="concat($basepath,$itemClassPath)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="$itemPathFromIndexFile"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

      <!-- path to .widget or .type file -->
      <xsl:variable name="typeFilePath">
        <xsl:call-template name="getTypeFilePath">
          <xsl:with-param name="itemFullPath" select="$itemFullPath"/>
          <xsl:with-param name="itemName" select="$itemName"/>
          <xsl:with-param name="itemType" select="$itemType"/>
        </xsl:call-template>
      </xsl:variable>

      <!-- write @import directive -->
      <xsl:call-template name="setBaseInclude">
        <xsl:with-param name="itemFullPath" select="$itemFullPath"/>
        <xsl:with-param name="itemClassPath" select="$itemClassPath"/>
        <xsl:with-param name="itemName" select="$itemName"/>
        <xsl:with-param name="itemType" select="$itemType"/>
      </xsl:call-template>

      <xsl:text>.</xsl:text>
      <xsl:value-of select="$styleNamePrefix"/>
      <xsl:text>_style_</xsl:text>
      <xsl:value-of select="@id"/><!-- Style-ID-->
      <xsl:text> {&#xa;</xsl:text>

      <xsl:text>@include </xsl:text>
      <xsl:value-of select="$styleNamePrefix"/>
      <xsl:text>_base</xsl:text>
      <xsl:text>;</xsl:text>
      <xsl:text> &#xa;</xsl:text>
      
      <!-- process each styleable property -->
      <xsl:for-each select="@*">
        <xsl:if test="not(name()='id' or name()='xsi:type')">
          <xsl:call-template name="createEntry">
            <xsl:with-param name="typeFilePath" select="$typeFilePath"></xsl:with-param>
            <xsl:with-param name="itemName" select="$itemName"></xsl:with-param>
            <xsl:with-param name="itemType" select="$itemType"></xsl:with-param>
          </xsl:call-template>
        </xsl:if>
      </xsl:for-each>
      <xsl:text>&#xa;}&#xa;</xsl:text>
    </xsl:if>
  </xsl:template>

  <!-- <xsl:template match="*" mode="copy-no-namespaces">
    <xsl:element name="{name(.)}">
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates mode="copy-no-namespaces"/>
    </xsl:element>
  </xsl:template> -->

  <!-- create entry for styleable property -->
  <xsl:template name="createEntry">
    <xsl:param name="typeFilePath"></xsl:param>
    <xsl:param name="itemName"></xsl:param>
    <xsl:param name="itemType"></xsl:param>
    <xsl:variable name="propertyName" select="name()"></xsl:variable>
    <xsl:variable name="propertyValue" select="."></xsl:variable>
        <xsl:for-each select="document($typeFilePath)//widget:StyleProperty[@name=$propertyName]/widget:StyleElement">
          <xsl:choose>
            <xsl:when test="@indexed">
              <xsl:call-template name="generateDynamicSelectors">
                <xsl:with-param name="value" select="$propertyValue" />
                <xsl:with-param name="attribute" select="@attribute" />
                <xsl:with-param name="selector" select="@selector" />
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="generateStaticSelector">
                <xsl:with-param name="value" select="$propertyValue" />
                <xsl:with-param name="attribute" select="@attribute" />
                <xsl:with-param name="selector" select="@selector" />
              </xsl:call-template>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
  </xsl:template>

  <xsl:template name="generateStaticSelector">
    <xsl:param name="value"></xsl:param>
    <xsl:param name="attribute"></xsl:param>
    <xsl:param name="selector"></xsl:param>
    <xsl:choose>
      <xsl:when test="not($selector) or $selector=''">
        <xsl:call-template name="generateValue">
          <xsl:with-param name="value" select="$value"></xsl:with-param>
          <xsl:with-param name="attribute" select="$attribute"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$selector"/>
        <xsl:text> {&#xa;</xsl:text>
        <xsl:call-template name="generateValue">
          <xsl:with-param name="value" select="$value"></xsl:with-param>
          <xsl:with-param name="attribute" select="$attribute"></xsl:with-param>
        </xsl:call-template>
        <xsl:text>}&#xa;</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="generateDynamicSelectors">
    <xsl:param name="attribute" />
    <xsl:param name="selector" />
    <xsl:param name="value" />

    <xsl:variable name="listLength">
      <xsl:call-template name="get-list-length">
        <xsl:with-param name="value" select="$value" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:call-template name="dynamicLines">
      <xsl:with-param name="pStart" select="1"/>
      <xsl:with-param name="pEnd" select="$listLength"/>
      <xsl:with-param name="value" select="$value" />
      <xsl:with-param name="attribute" select="$attribute" />
      <xsl:with-param name="selector" select="$selector" />
    </xsl:call-template>

  </xsl:template>

  <xsl:template name="dynamicLines">
    <xsl:param name="pStart"/>
    <xsl:param name="pEnd"/>
    <xsl:param name="value" />
    <xsl:param name="attribute" />
    <xsl:param name="selector" />

    <xsl:if test="not($pStart > $pEnd)">
      <xsl:choose>
        <xsl:when test="$pStart = $pEnd">

          <xsl:variable name="index" select="$pStart"/>
          <xsl:variable name="replacedAttribute">
            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$attribute" />
              <xsl:with-param name="replace" select="'$index'" />
              <xsl:with-param name="by" select="$index" />
            </xsl:call-template>
          </xsl:variable>
          <xsl:variable name="replacedSelector">
            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$selector" />
              <xsl:with-param name="replace" select="'$index'" />
              <xsl:with-param name="by" select="$index" />
            </xsl:call-template>
          </xsl:variable>

          <xsl:value-of select="$replacedSelector"/>
          <xsl:text>{&#xa;&#x9;&#x9;</xsl:text>

          <xsl:call-template name="generateValue">
            <xsl:with-param name="value" select="$value" />
            <xsl:with-param name="attribute" select="$replacedAttribute" />
          </xsl:call-template>
          <xsl:text>&#x9;}&#xa;</xsl:text>

        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="vMid" select="floor(($pStart + $pEnd) div 2)"/>
          <xsl:call-template name="dynamicLines">
            <xsl:with-param name="pStart" select="$pStart"/>
            <xsl:with-param name="pEnd" select="$vMid"/>
            <xsl:with-param name="value" select="$value" />
            <xsl:with-param name="attribute" select="$attribute" />
            <xsl:with-param name="selector" select="$selector" />
          </xsl:call-template>
          <xsl:call-template name="dynamicLines">
            <xsl:with-param name="pStart" select="$vMid+1"/>
            <xsl:with-param name="pEnd" select="$pEnd"/>
            <xsl:with-param name="value" select="$value" />
            <xsl:with-param name="attribute" select="$attribute" />
            <xsl:with-param name="selector" select="$selector" />
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <!-- generate value for stylable attribute-->
  <xsl:template name="generateValue">
    <xsl:param name="value"></xsl:param>
    <xsl:param name="attribute"></xsl:param>
    <xsl:variable name="preattr">
      <xsl:choose>
        <xsl:when test="contains($attribute,'$value')">
          <xsl:variable name="outattr">
            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$attribute" />
              <xsl:with-param name="replace" select="'$value'" />
              <xsl:with-param name="by" select="$value" />
            </xsl:call-template>
          </xsl:variable>
          <xsl:value-of select="$outattr"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>&#x9;</xsl:text>
          <xsl:value-of select="$attribute"/>
          <xsl:text>: </xsl:text>
          <xsl:value-of select="$value"/>
          <xsl:if test="@calc">
            <xsl:value-of select="@calc"/>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:value-of select="$preattr"/>

    <xsl:text>;&#xa;</xsl:text>
  </xsl:template>

  <xsl:template name="getTypeFilePath">
    <xsl:param name="itemFullPath"></xsl:param>
    <xsl:param name="itemName"></xsl:param>
    <xsl:param name="itemType"></xsl:param>
    <xsl:choose>
      <xsl:when test="$itemType='system'">
        <xsl:value-of select="concat($asBasepath,$itemName,'.type')"/>
      </xsl:when>
      <xsl:when test="$itemType='structuredProperty'">
        <xsl:value-of select="concat($itemFullPath,$elpathdelimiter,'meta',$elpathdelimiter,$itemName,$elpathdelimiter,$itemName,'.type')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat($itemFullPath,$elpathdelimiter,'meta',$elpathdelimiter,$itemName,'.widget')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- path to base mixin for @import -->
  <xsl:template name="setBaseInclude">
    <xsl:param name="itemFullPath"></xsl:param>
    <xsl:param name="itemClassPath"></xsl:param>
    <xsl:param name="itemName"></xsl:param>
    <xsl:param name="itemType"></xsl:param>

    <xsl:variable name="importPath">
      <xsl:choose>
        <xsl:when test="$itemType='system'">
          <xsl:text>@import "</xsl:text>
          <xsl:choose>
            <xsl:when test="$useWidgetIndex='false'"><!-- CE -->
              <xsl:value-of select="concat($systemBasepath,substring(@xsi:type,15))"/>
            </xsl:when>
            <xsl:otherwise><!-- ASB -->
              <xsl:value-of select="concat($asBasepath,substring(@xsi:type,15))"/>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>_base";&#xa;</xsl:text>
        </xsl:when>
        <xsl:when test="$itemType='structuredProperty'">
          <xsl:text>@import "</xsl:text>
          <xsl:choose>
            <xsl:when test="$useWidgetIndex='false'"><!-- CE -->
              <xsl:value-of select="concat($widgetBasepath,$itemClassPath,$elpathdelimiter,'meta',$elpathdelimiter,$itemName,$elpathdelimiter,$itemName)"/>
            </xsl:when>
            <xsl:otherwise><!-- ASB -->
              <xsl:value-of select="concat($itemFullPath,$elpathdelimiter,'meta',$elpathdelimiter,$itemName,$elpathdelimiter,$itemName)"/>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>_base";&#xa;</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>@import "</xsl:text>
          <xsl:choose>
            <xsl:when test="$useWidgetIndex='false'"><!-- CE -->
              <xsl:value-of select="concat($widgetBasepath,$itemClassPath,$elpathdelimiter,'meta',$elpathdelimiter,$itemName)"/>
            </xsl:when>
            <xsl:otherwise><!-- ASB -->
              <xsl:value-of select="concat($itemFullPath,$elpathdelimiter,'meta',$elpathdelimiter,$itemName)"/>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>_base";&#xa;</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:value-of select="$importPath"/>

  </xsl:template>

</xsl:stylesheet>
