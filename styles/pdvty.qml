<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.12.1-București" minScale="1e+08" styleCategories="AllStyleCategories" maxScale="0" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="WMSBackgroundLayer" value="false"/>
    <property key="WMSPublishDataSourceUrl" value="false"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="identify/format" value="Value"/>
  </customproperties>
  <pipe>
    <rasterrenderer type="singlebandpseudocolor" opacity="1" band="1" classificationMax="inf" alphaBand="-1" classificationMin="-0.111562" nodataColor="">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" clip="0" classificationMode="2">
          <colorramp type="gradient" name="[source]">
            <prop v="215,25,28,255" k="color1"/>
            <prop v="26,150,65,255" k="color2"/>
            <prop v="1" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.2;253,174,97,255:0.4;255,255,192,255:0.6;166,217,106,255:0.8;26,150,65,255" k="stops"/>
          </colorramp>
          <item alpha="255" label="Extremely Low Productivity" color="#d7191c" value="-0.1115625"/>
          <item alpha="255" label="Very Low Productivity" color="#ce676b" value="-0.00312500000000002"/>
          <item alpha="255" label="Low Productivity" color="#fdae61" value="0.1053125"/>
          <item alpha="255" label="Slightly Moderate Productivity" color="#ffffc0" value="0.21375"/>
          <item alpha="255" label="Moderate Productivity" color="#ffffd3" value="0.3221875"/>
          <item alpha="255" label="Slightly High Productivity" color="#a6d96a" value="0.430625"/>
          <item alpha="255" label="High Productivity" color="#2fd268" value="0.5390625"/>
          <item alpha="255" label="Very High Productivity" color="#1a9641" value="inf"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation colorizeRed="255" grayscaleMode="0" colorizeGreen="128" saturation="0" colorizeOn="0" colorizeBlue="128" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
