# Land Productivity Analysis Tool (LPAT)
Using a well developed methodology, the LPAT QGIS plugin aims to enhance the assessment of extent and severity of land productivity using earth observation datasets.
 
 ## Targeted Region
 The analysis is targeting 10 eastern Africa countries, namely: Djibouti, Eritrea, Ethiopia, Kenya, Mauritius, Rwanda, Somalia, South Sudan, Sudan and Uganda.
 
 ## Objectives
 ### Soil Productivity Index
 To compute the Soil Productivity Index (SPI), the tool requires a soils dataset.
 This holds soil physio-chemical properties as field attributes.
 The SPI was defined based on the FAO soil classification and a computed Land Productivity Index (LPI)
 The FAO soil classification provides inherent agricultural productivity of different soils.
 This represents the potential of a given soil to produce crops or biomass.
 
 
 ### Net Productivity Index
 To compute Net Productivity Index, the tool requires a savi dataset as input. This holds the net primary productivity vegetation indice for the above-ground productivity state.
 integrates it with the appropriate soil productivity indices. Aggregated Land Productivity is mathematically computed from combinatorial algebraic formulations derived 
 from parameters of soil and above ground productivity constrained with socio-economic and infrastructure layers.
 
 | Computed Outputs | Description |
| --- | --- |
| `Extremely Low` | These are portions of land  that are  entirely bare or rocky |
| `Very Low` | These are portions of land  that are also bare to some extent |
| `Low` | These are portions of land that are characterized with sparse grasslands and shrubs and with bare patches |
| `Slightly Moderate` | Portions of land with slightly moderate standing biomass (closed vegetation e.g. Closed evergreen or deciduous forest, Mosaic vegetation (grassland/shrubland/forest) / cropland) |
| `Slightly High` | Portions of land with slightly high standing biomass (closed vegetation e.g. Closed evergreen or deciduous forest, Mosaic vegetation (grassland/shrubland/forest) / cropland) |
| `High` | Portions of land with high standing biomass (closed vegetation e.g. Closed evergreen or deciduous forest, Mosaic vegetation (grassland/shrubland/forest) / cropland) |
| `Very High` | Portions of land with very high standing biomass (closed vegetation e.g. Closed evergreen or deciduous forest, Mosaic vegetation (grassland/shrubland/forest) / cropland) |

