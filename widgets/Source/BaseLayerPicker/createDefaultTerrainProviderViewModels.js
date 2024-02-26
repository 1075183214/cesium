import {
  buildModuleUrl,
  createWorldTerrainAsync,
  EllipsoidTerrainProvider,
} from "@cesium/engine";
import ProviderViewModel from "./ProviderViewModel.js";

// /**
//  * @private
//  */
// function createDefaultTerrainProviderViewModels() {
//   const providerViewModels = [];
//   providerViewModels.push(
//     new ProviderViewModel({
//       name: "WGS84 Ellipsoid",
//       iconUrl: buildModuleUrl("Widgets/Images/TerrainProviders/Ellipsoid.png"),
//       tooltip: "WGS84 standard ellipsoid, also known as EPSG:4326",
//       category: "Cesium ion",
//       creationFunction: function () {
//         return new EllipsoidTerrainProvider();
//       },
//     })
//   );

//   providerViewModels.push(
//     new ProviderViewModel({
//       name: "Cesium World Terrain",
//       iconUrl: buildModuleUrl(
//         "Widgets/Images/TerrainProviders/CesiumWorldTerrain.png"
//       ),
//       tooltip:
//         "High-resolution global terrain tileset curated from several datasources and hosted by Cesium ion",
//       category: "Cesium ion",
//       creationFunction: function () {
//         return createWorldTerrainAsync({
//           requestWaterMask: true,
//           requestVertexNormals: true,
//         });
//       },
//     })
//   );

//   return providerViewModels;
// }

/**
 * @private
 */
function createDefaultTerrainProviderViewModels() {
  const providerViewModels = [];

  //【世纪空间 ATGlobe】 汉化

  providerViewModels.push(
    new ProviderViewModel({
      name: "WGS84 标准椭球",
      iconUrl: buildModuleUrl("Widgets/Images/TerrainProviders/Ellipsoid.png"),
      tooltip: "WGS84标准椭球，即 EPSG:4326",
      category: "Cesium ion",
      creationFunction: function () {
        return new EllipsoidTerrainProvider();
      },
    })
  );

  providerViewModels.push(
    new ProviderViewModel({
      name: "Cesium 全球地形",
      iconUrl: buildModuleUrl(
        "Widgets/Images/TerrainProviders/CesiumWorldTerrain.png"
      ),
      tooltip:
        "由 Cesium官方 提供的高分辨率全球地形",
      category: "Cesium ion",
      creationFunction: function () {
        return createWorldTerrainAsync({
          requestWaterMask: true,
          requestVertexNormals: true,
        });
      },
    })
  );

  //【世纪空间 ATGlobe】 汉化
  
  return providerViewModels;
}
export default createDefaultTerrainProviderViewModels;
